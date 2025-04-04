       IDENTIFICATION DIVISION.
       PROGRAM-ID. SalaryCalc.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Employee.
           05 Current-Salary PIC 9(6) VALUE 0.
           05 Bonus PIC 9(6) VALUE 0.
           05 New-Salary PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.
           MOVE 3000 TO Current-Salary.
           MOVE 500 TO Bonus.

           DISPLAY Current-Salary. *> 3000
           DISPLAY Bonus. *> 500

           *> TODO: Add Current-Salary to Bonus and store the result in New-Salary.
           ADD Current-Salary TO Bonus GIVING New-Salary.

           *> TODO: Display the new salary with OF operator. *> Should display 3500
           DISPLAY New-Salary OF Employee.

           STOP RUN.