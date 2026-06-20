
CREATE TABLE Department (
    Num_S INT PRIMARY KEY,
    Label VARCHAR(255) NOT NULL,
    Manager_Name VARCHAR(255) NOT NULL
);



CREATE TABLE Employee (
    Num_E INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Position VARCHAR(255) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL,
    Department_Num_S INT NOT NULL,

    CONSTRAINT FK_Employee_Department
        FOREIGN KEY (Department_Num_S)
        REFERENCES Department(Num_S)
);



CREATE TABLE Project (
    Num_P INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Start_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    Department_Num_S INT NOT NULL,

    CONSTRAINT FK_Project_Department
        FOREIGN KEY (Department_Num_S)
        REFERENCES Department(Num_S)
);



CREATE TABLE Employee_Project (
    Employee_Num_E INT NOT NULL,
    Project_Num_P INT NOT NULL,
    Role VARCHAR(255) NOT NULL,

    PRIMARY KEY (Employee_Num_E, Project_Num_P),

    CONSTRAINT FK_EmployeeProject_Employee
        FOREIGN KEY (Employee_Num_E)
        REFERENCES Employee(Num_E),

    CONSTRAINT FK_EmployeeProject_Project
        FOREIGN KEY (Project_Num_P)
        REFERENCES Project(Num_P)
);