
-- Relação entre valor solicitado e sucesso do empréstimo

SELECT 
    Success,
    ROUND(AVG(ISNULL(Amount, 0)), 2) AS AvgAmount,
    COUNT(*) AS TotalLoans
FROM LoanApplications
GROUP BY Success;

-- Relação entre prazo e sucesso do empréstimo

SELECT 
    Success,
    ROUND(AVG(Term), 2) AS AvgTerm,
    COUNT(*) AS TotalLoans
FROM LoanApplications
GROUP BY Success;

-- Saldo atual médio sem hipoteca por status de aprovação

SELECT 
    l.Success,
    ROUND(AVG(c.ALL_SumCurrentOutstandingBalExcMtg), 2) AS AvgCurrentOutstandingBalance
FROM LoanApplications l
JOIN CustomerCredit c
    ON l.UID = c.UID
GROUP BY l.Success;

-- Top 10 finalidades mais comuns de empréstimos mais frequentes

SELECT TOP 10
    LoanPurpose,
    COUNT(*) AS Frequency
FROM LoanApplications
GROUP BY LoanPurpose
ORDER BY Frequency DESC;