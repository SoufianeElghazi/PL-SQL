/*
                ###########################################
                ############___ELGHAZI_SOUFIANE___#########
                ###########################################
*/
------------------Exercices--------------
--  • Créer un trigger qui affiche le nombre d’employés insérés dans la table EMPLOYES après chaque insertion.
CREATE OR REPLACE TRIGGER emp_insert_trigger
AFTER INSERT
ON EMPLOYEES
FOR EACH ROW
BEGIN

    SELECT COUNT(*) AS num_employees FROM EMPLOYEES;
END;
-- • Modifier le trigger précédent pour que le déclencheur refuse l’insertion d’un employé dont le salaire est inférieur à 2500 ou supérieur à 20 000 en 
--annulant la transaction et en levant une erreur, sinon il enregistre définitivement la transaction.
CREATE OR REPLACE TRIGGER emp_insert_trigger
BEFORE INSERT
ON EMPLOYEES
FOR EACH ROW
BEGIN
    IF NEW.SALARY < 2500 OR NEW.SALARY > 20000 THEN
        raise_application_error(-20002,'le salaire doit être entre 2500 et 20 000!!');        
        ROLLBACK;
    END IF;
END;
