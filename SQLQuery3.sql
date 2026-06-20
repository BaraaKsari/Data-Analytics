SELECT
    E.Name,
    COUNT(EP.Project_Num_P) AS Total_Projects
FROM Employee E
JOIN Employee_Project EP
    ON E.Num_E = EP.Employee_Num_E
GROUP BY E.Num_E, E.Name
HAVING COUNT(EP.Project_Num_P) > 1;



SELECT
    D.Label AS Department_Name,
    D.Manager_Name,
    P.Title AS Project_Title
FROM Department D
JOIN Project P
    ON D.Num_S = P.Department_Num_S
ORDER BY D.Label;



SELECT
    E.Name,
    EP.Role
FROM Employee E
JOIN Employee_Project EP
    ON E.Num_E = EP.Employee_Num_E
JOIN Project P
    ON EP.Project_Num_P = P.Num_P
WHERE P.Title = 'Website Redesign';


SELECT TOP 1
    D.Label,
    D.Manager_Name,
    COUNT(E.Num_E) AS Total_Employees
FROM Department D
JOIN Employee E
    ON D.Num_S = E.Department_Num_S
GROUP BY D.Num_S, D.Label, D.Manager_Name
ORDER BY COUNT(E.Num_E) DESC;


SELECT
    E.Name,
    E.Position,
    D.Label AS Department_Name,
    E.Salary
FROM Employee E
JOIN Department D
    ON E.Department_Num_S = D.Num_S
WHERE E.Salary > 60000;


SELECT
    P.Title,
    COUNT(EP.Employee_Num_E) AS Number_Of_Employees
FROM Project P
LEFT JOIN Employee_Project EP
    ON P.Num_P = EP.Project_Num_P
GROUP BY P.Num_P, P.Title;


SELECT
    E.Name AS Employee_Name,
    P.Title AS Project_Title,
    EP.Role
FROM Employee_Project EP
JOIN Employee E
    ON EP.Employee_Num_E = E.Num_E
JOIN Project P
    ON EP.Project_Num_P = P.Num_P
ORDER BY E.Name;


SELECT
    D.Label AS Department_Name,
    D.Manager_Name,
    SUM(E.Salary) AS Total_Salary_Expenditure
FROM Department D
JOIN Employee E
    ON D.Num_S = E.Department_Num_S
GROUP BY D.Num_S, D.Label, D.Manager_Name
ORDER BY Total_Salary_Expenditure DESC;

