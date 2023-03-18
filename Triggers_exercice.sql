/*
                ###########################################
                ############___ELGHAZI_SOUFIANE___#########
                ###########################################
*/
------------------Exercices--------------
--  � Cr�er un trigger qui affiche le nombre d�employ�s ins�r�s dans la table EMPLOYES apr�s chaque insertion.
CREATE OR REPLACE TRIGGER emp_insert_trigger
AFTER INSERT
ON EMPLOYEES
FOR EACH ROW
BEGIN

    SELECT COUNT(*) AS num_employees FROM EMPLOYEES;
END;
-- � Modifier le trigger pr�c�dent pour que le d�clencheur refuse l�insertion d�un employ� dont le salaire est inf�rieur � 2500 ou sup�rieur � 20 000 en 
--annulant la transaction et en levant une erreur, sinon il enregistre d�finitivement la transaction.
CREATE OR REPLACE TRIGGER emp_insert_trigger
BEFORE INSERT
ON EMPLOYEES
FOR EACH ROW
BEGIN
    IF NEW.SALARY < 2500 OR NEW.SALARY > 20000 THEN
        raise_application_error(-20002,'le salaire doit �tre entre 2500 et 20 000!!');        
        ROLLBACK;
    END IF;
END;
