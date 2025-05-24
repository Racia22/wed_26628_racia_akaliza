


CREATE TABLE Users (
  User_ID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Department VARCHAR(100) NOT NULL,
  Contact_Info VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE Equipment (
  Equipment_ID INT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Type VARCHAR(50) NOT NULL,
  Condition VARCHAR(50) DEFAULT 'Good' CHECK (Condition IN ('Good', 'Fair', 'Damaged')),
  Availability_Status VARCHAR(20) DEFAULT 'Available' CHECK (Availability_Status IN ('Available', 'Borrowed'))
);

CREATE TABLE Borrowing_Records (
  Borrow_ID INT PRIMARY KEY,
  User_ID INT NOT NULL,
  Equipment_ID INT NOT NULL,
  Borrow_Date DATE NOT NULL,
  Due_Date DATE NOT NULL,
  Return_Date DATE,
  Status VARCHAR(20) DEFAULT 'Borrowed' CHECK (Status IN ('Borrowed', 'Returned', 'Overdue')),
  FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
  FOREIGN KEY (Equipment_ID) REFERENCES Equipment(Equipment_ID),
  CHECK (Due_Date > Borrow_Date) -- ? Table-level constraint
);

CREATE TABLE Fines (
  Fine_ID INT PRIMARY KEY,
  User_ID INT NOT NULL,
  Amount DECIMAL(10,2) DEFAULT 0.00 CHECK (Amount >= 0),
  Reason VARCHAR(150) NOT NULL,
  Paid_Status VARCHAR(20) DEFAULT 'Unpaid' CHECK (Paid_Status IN ('Paid', 'Unpaid')),
  FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

INSERT INTO Users VALUES (1, 'Lyna ', 'IT Department', 'lyna@gmail.com');
INSERT INTO Users VALUES (2, 'Ben ', 'Science Lab', 'ben@gmail.com');
INSERT INTO Users VALUES (3, 'Gloria ', 'Engineering', 'gloria@gmail.com');
INSERT INTO Users VALUES (4, 'Daniel ', 'Architecture', 'daniel@gmail.com');
INSERT INTO Users VALUES (5, 'Eve ', 'Business', 'eve@gmail.com');

INSERT INTO Equipment VALUES (101, 'Dell Laptop', 'Laptop', 'Good', 'Available');
INSERT INTO Equipment VALUES (102, 'Canon Camera', 'Camera', 'Fair', 'Available');
INSERT INTO Equipment VALUES (103, 'Epson Projector', 'Projector', 'Good', 'Borrowed');
INSERT INTO Equipment VALUES (104, 'Multimeter', 'Lab Tool', 'Damaged', 'Available');
INSERT INTO Equipment VALUES (105, 'MacBook Pro', 'Laptop', 'Good', 'Available');

INSERT INTO Borrowing_Records VALUES (201, 1, 101, TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-10', 'YYYY-MM-DD'), NULL, 'Borrowed');
INSERT INTO Borrowing_Records VALUES (202, 2, 103, TO_DATE('2025-05-03', 'YYYY-MM-DD'), TO_DATE('2025-05-12', 'YYYY-MM-DD'), TO_DATE('2025-05-11', 'YYYY-MM-DD'), 'Returned');
INSERT INTO Borrowing_Records VALUES (203, 3, 102, TO_DATE('2025-04-25', 'YYYY-MM-DD'), TO_DATE('2025-05-05', 'YYYY-MM-DD'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), 'Overdue');
INSERT INTO Borrowing_Records VALUES (204, 1, 104, TO_DATE('2025-05-04', 'YYYY-MM-DD'), TO_DATE('2025-05-14', 'YYYY-MM-DD'), NULL, 'Borrowed');
INSERT INTO Borrowing_Records VALUES (205, 5, 105, TO_DATE('2025-05-02', 'YYYY-MM-DD'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), TO_DATE('2025-05-09', 'YYYY-MM-DD'), 'Returned');

INSERT INTO Fines VALUES (301, 3, 50.00, 'Late return of camera', 'Unpaid');
INSERT INTO Fines VALUES (302, 2, 0.00, 'Returned on time', 'Paid');
INSERT INTO Fines VALUES (303, 5, 0.00, 'Good standing', 'Paid');
INSERT INTO Fines VALUES (304, 1, 10.00, 'Slight delay in return', 'Unpaid');
INSERT INTO Fines VALUES (305, 4, 0.00, 'No penalties yet', 'Unpaid');

-- Correct table creation for LandParcels
CREATE TABLE LandParcels (
    ParcelID NUMBER PRIMARY KEY,
    Location VARCHAR2(100) NOT NULL,
    Size NUMBER(10,2),
    LandUseType VARCHAR2(50)
);
-- Insert
INSERT INTO Fines VALUES (306, 1, 25.00, 'Late return of projector', 'Unpaid');

-- Update
UPDATE Equipment SET Availability_Status = 'Available' WHERE Equipment_ID = 103;

-- Delete
DELETE FROM Borrowing_Records WHERE Borrow_ID = 204;

-- DDL AND DML OPERATIONS
-- Create
CREATE TABLE Audit_Log (
  Log_ID INT PRIMARY KEY,
  Action VARCHAR2(100),
  Timestamp DATE DEFAULT SYSDATE
);

--Alter
ALTER TABLE Equipment ADD Manufacturer VARCHAR2(100);

--Drop
DROP TABLE Audit_Log;

-- Procedures and Functions

--  Procedure: Get_User_Borrow_History
CREATE OR REPLACE PROCEDURE Get_User_Borrow_History(p_user_id IN NUMBER) IS
  CURSOR c_borrow IS
    SELECT * FROM Borrowing_Records WHERE User_ID = p_user_id;
  v_record Borrowing_Records%ROWTYPE;
BEGIN
  OPEN c_borrow;
  LOOP
    FETCH c_borrow INTO v_record;
    EXIT WHEN c_borrow%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Borrow ID: ' || v_record.Borrow_ID || ', Status: ' || v_record.Status);
  END LOOP;
  CLOSE c_borrow;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;

CREATE OR REPLACE PROCEDURE Get_User_Borrow_History(p_user_id IN NUMBER) IS
  CURSOR c_borrow IS
    SELECT * FROM Borrowing_Records WHERE User_ID = p_user_id;
  v_record Borrowing_Records%ROWTYPE;
BEGIN
  OPEN c_borrow;
  LOOP
    FETCH c_borrow INTO v_record;
    EXIT WHEN c_borrow%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Borrow ID: ' || v_record.Borrow_ID || ', Status: ' || v_record.Status);
  END LOOP;
  CLOSE c_borrow;
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/
-- Function CALCULATE_USER_FINES
CREATE OR REPLACE FUNCTION Calculate_User_Fines(p_user_id IN NUMBER)
RETURN NUMBER
IS
  v_total NUMBER := 0;
BEGIN
  SELECT SUM(Amount)
  INTO v_total
  FROM Fines
  WHERE User_ID = p_user_id AND Paid_Status = 'Unpaid';

  RETURN NVL(v_total, 0);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 0;
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    RETURN -1;
END;
/

-- PACKAGE pkg_user_analytics
-- Package Specification
CREATE OR REPLACE PACKAGE pkg_user_analytics IS
  PROCEDURE Get_User_Borrow_History(p_user_id IN NUMBER);
  FUNCTION Calculate_User_Fines(p_user_id IN NUMBER) RETURN NUMBER;
END pkg_user_analytics;
/

-- Package Body
CREATE OR REPLACE PACKAGE BODY pkg_user_analytics IS

  PROCEDURE Get_User_Borrow_History(p_user_id IN NUMBER) IS
    CURSOR c_borrow IS
      SELECT * FROM Borrowing_Records WHERE User_ID = p_user_id;
    v_record Borrowing_Records%ROWTYPE;
  BEGIN
    OPEN c_borrow;
    LOOP
      FETCH c_borrow INTO v_record;
      EXIT WHEN c_borrow%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Borrow ID: ' || v_record.Borrow_ID || ', Status: ' || v_record.Status);
    END LOOP;
    CLOSE c_borrow;
  EXCEPTION
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
  END;

  FUNCTION Calculate_User_Fines(p_user_id IN NUMBER) RETURN NUMBER IS
    v_total NUMBER := 0;
  BEGIN
    SELECT SUM(Amount) INTO v_total FROM Fines WHERE User_ID = p_user_id AND Paid_Status = 'Unpaid';
    RETURN NVL(v_total, 0);
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN 0;
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
      RETURN -1;
  END;

END pkg_user_analytics;
/


Rollback;
commit;


















