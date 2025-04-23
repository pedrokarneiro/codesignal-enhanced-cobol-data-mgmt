       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeExpenses.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Monthly-Expenses.
           05 Rent PIC S9(5)V99 VALUE 1200.00.
           05 Utilities PIC S9(4)V99 VALUE 300.00.
           05 Food PIC S9(4)V99 VALUE 500.00.
           05 Monthly-Total PIC S9(6)V99.

       01 Average-Daily-Expense PIC S9(4)V99.

       PROCEDURE DIVISION.
           *> TODO: Compute the total monthly expenses and store it in Monthly-Total with formula: Rent + Utilities + Food
           COMPUTE Monthly-Total = Rent + Utilities + Food. *> <-- line added.
           DISPLAY "Total Monthly Expenses: " Monthly-Total.

           *> TODO: Compute the average daily expense for the month by dividing Monthly-Total by 30
           COMPUTE Average-Daily-Expense = Monthly-Total / 30. *> <-- line added.
           DISPLAY "Average Daily Expense: " Average-Daily-Expense.

           STOP RUN.