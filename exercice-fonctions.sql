/*
                ###########################################
                ############___ELGHAZI_SOUFIANE___#########
                ###########################################
*/
------------------Exercices--------------
--• Créez une fonction qui retourne le nombre d’années d’ancienneté d’un employé dont le matricule est donné comme paramètre.
CREATE OR REPLACE FUNCTION anciennete(m IN NUMBER)
RETURN NUMBER
IS
  v_embauche DATE;
  v_annee_embauche NUMBER;
BEGIN
  -- Récupérer la date d'embauche de l'employé
  SELECT HIRE_DATE INTO v_embauche FROM employees WHERE EMPLOYEE_ID = m;
  -- Calculer le nombre d'années d'ancienneté
  v_annee_embauche := TRUNC(MONTHS_BETWEEN(SYSDATE, v_embauche) / 12);
  RETURN v_annee_embauche;
END;
/
--------- Appel dans un programme:

set serveroutput on;
declare
R number;
begin
    
    DBMS_output.put_line('le nombre d’années d’ancienneté demployé 123 est ---- '||anciennete(123));
end;

--• Créez une procédure stockée qui affiche les départements qui ont au moins 3 employés ayant plus de 30 ans de service.

CREATE OR REPLACE PROCEDURE dept_anciennete IS

BEGIN
  FOR rec IN (
    SELECT d.DEPARTMENT_NAME, COUNT(*) AS nb_employees 
    FROM DEPARTMENTS d
    JOIN employees e ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
    WHERE MONTHS_BETWEEN(SYSDATE, e.HIRE_DATE) >= 30
    GROUP BY d.DEPARTMENT_NAME
    HAVING COUNT(*) >= 3
  ) LOOP
    DBMS_OUTPUT.PUT_LINE(rec.DEPARTMENT_NAME||' contient ------'|| rec.nb_employees||'---employee ayant plus de 30 ans de service.' );
    DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------------------------------------------------');
  END LOOP;
END;
/
--------- Appel dans un programme:
set serveroutput on;
EXECUTE dept_anciennete;
