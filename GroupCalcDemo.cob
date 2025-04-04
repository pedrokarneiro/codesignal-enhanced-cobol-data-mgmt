       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupCalcDemo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Account.
           05 Account-Balance PIC 9(6) VALUE 0.
           05 Deposit PIC 9(6) VALUE 0.
           05 New-Balance PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.
           MOVE 5000 TO Account-Balance.
           MOVE 1500 TO Deposit.

           DISPLAY Account-Balance. *> 5000
           DISPLAY Deposit. *> 1500

           ADD Account-Balance TO Deposit GIVING New-Balance.
           DISPLAY "New Account Balance: " New-Balance OF Account. *> 6500

           STOP RUN.