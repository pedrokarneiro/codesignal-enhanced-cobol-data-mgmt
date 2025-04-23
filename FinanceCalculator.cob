       IDENTIFICATION DIVISION.
       PROGRAM-ID. FinanceCalculator.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> TODO: Declare variables under 01 level 'Customer' with the following fields:
       *> Account-Balance, Interest-Rate, Monthly-Spendings with types PIC S9(5)V99, PIC S9(3)V99, PIC S9(5)V99 respectively and values 100.00, 0.05, 50.00
       01 Customer
           05 Account-Balance   PIC S9(5)V99 VALUE 100.00.
           05 Interest-Rate     PIC S9(3)V99 VALUE 0.05.
           05 Monthly-Spendings PIC S9(5)V99 VALUE 50.00.

       01 Result                PIC S9(5)V99.

       PROCEDURE DIVISION.

           *> TODO: Compute 'Result' by adding Account-Balance and the product of Account-Balance and Interest-Rate
           COMPUTE Result = Account-Balance
                          + Account-Balance * Interest-Rate.
    
           *> and DISPLAY "New Balance is:" followed by the Result value
           DISPLAY "New Balance is:" Result.

           *> TODO: Compute 'Result' by dividing Monthly-Spendings by 30
           COMPUTE Result = Monthly-Spendings / 30.
    
           *> and DISPLAY "Average daily spendings:" followed by the Result value
           DISPLAY "Average daily spendings:" Result.

           STOP RUN.