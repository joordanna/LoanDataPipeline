CREATE DATABASE LoanAnalysis;
USE LoanAnalysis;


CREATE TABLE CustomerCredit (
    UID INT PRIMARY KEY,
    ALL_AgeOfOldestAccount INT,
    ALL_SumCurrentOutstandingBalExcMtg FLOAT,
    ALL_WorstPaymentStatusActiveAccounts INT
);



CREATE TABLE LoanApplications (
    ApplicationID INT IDENTITY(1,1) PRIMARY KEY,
    UID INT,
    ApplicationDate DATE,
    Amount FLOAT,
    Term INT,
    EmploymentType VARCHAR(50),
    LoanPurpose VARCHAR(100),
    Success BIT,
    FOREIGN KEY (UID) REFERENCES CustomerCredit(UID)
);



SELECT TOP 100 * FROM LoanApplications;
SELECT TOP 100 * FROM CustomerCredit;

