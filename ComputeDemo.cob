       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeDemo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           02 Account-Balance PIC S9(5)V99 VALUE 100.00.
           02 Deposit         PIC S9(5)V99 VALUE 45.00.
           02 New-Balance     PIC S9(5)V99.

       01 TAX PIC S9(3)V99 VALUE 0.1.

       PROCEDURE DIVISION.
           COMPUTE New-Balance = Account-Balance + Deposit - TAX.
           DISPLAY 'New Balance: ' New-Balance.

           STOP RUN.