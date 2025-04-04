       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupCalcDemo02.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Account.
           05 Account-Balance PIC 9(6) VALUE 0.
           05 Deposit PIC 9(6) VALUE 0.
           05 New-Balance PIC 9(6) VALUE 0.
           05 Withdrwal PIC 9(6) VALUE 100.

       PROCEDURE DIVISION.
           MOVE 5000 TO Account-Balance.
           MOVE 1500 TO Deposit.

           DISPLAY Account-Balance. *> 5000
           DISPLAY Deposit. *> 1500

           *> TODO: Change the following line to subtract a withdrawal amount instead of adding a deposit.
           *> Remember to replace the "Deposit" variable with a new variable for the withdrawal amount.
           *> ADD Account-Balance TO Deposit GIVING New-Balance. <-- Line replaced.
           SUBTRACT Withdrwal FROM Account-Balance
                              GIVING New-Balance. *> <-- Replacing line.
    
           DISPLAY "New Account Balance: " New-Balance OF Account. *> 6500

           STOP RUN.