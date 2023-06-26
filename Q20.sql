CREATE OR REPLACE TRIGGER NumEmployeesAssigned
AFTER INSERT OR UPDATE OR DELETE ON Assign
FOR EACH ROW
DECLARE
    v_numEmployees NUMBER;
BEGIN
    -- Retrieve the number of assigned employees for the project
    SELECT COUNT(*) INTO v_numEmployees FROM Assign WHERE projNo = :NEW.projNo;

    -- Update the numEmployeesAssigned field in the Project table
    UPDATE Project
    SET numEmployeesAssigned = v_numEmployees
    WHERE projNo = :NEW.projNo;

    COMMIT;
END;
