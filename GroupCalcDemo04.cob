       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupCalcDemo04.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Account.
           05 Account-Balance PIC 9(6) VALUE 0.
           05 Deposit PIC 9(6) VALUE 0.
           05 New-Balance PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.
           MOVE 5000 TO Account-Balance.
           MOVE 1500 TO Deposit.
       
           *> TODO: Add Deposit to Account-Balance and store the result in New-Balance
           ADD Deposit TO Account-Balance GIVING New-Balance. *> <-- Line added.

           *> TODO: Display the New-Balance
           DISPLAY New-Balance.                               *> <-- Line added.

           STOP RUN.
           