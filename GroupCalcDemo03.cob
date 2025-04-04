       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupCalcDemo03.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Account.
           05 Account-Balance PIC 9(6) VALUE 0.
           05 Deposit PIC 9(6) VALUE 0.
           05 New-Balance PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.
           MOVE 5000 TO Account-Balance.
           MOVE 1500 TO Deposit.

           ADD Deposit TO Account-Balance GIVING New-Balance.
           *> DISPLAY "New Account Balance: " New-Balance OFF Account. *> Should display 6500, but we get a compilation error on this line
           DISPLAY "New Account Balance: " New-Balance OF Account. *> <-- Line fixed.

           STOP RUN.