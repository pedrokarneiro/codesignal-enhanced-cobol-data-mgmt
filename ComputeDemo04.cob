       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeDemo04.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           02 Account-Balance PIC S9(5)V99 VALUE 100.00.
           02 Deposit PIC S9(5)V99 VALUE 45.00.
           02 New-Balance PIC S9(5)V99.

       01 Precalculated-Tax PIC S9(3)V99 VALUE 5.00.

       PROCEDURE DIVISION.
           *> TODO: Compute the new balance by adding the deposit and deducting the tax
           COMPUTE New-Balance = Account-Balance 
                               + Deposit 
                               - Precalculated-Tax. *> <-- line added.

           *> TODO: Display the new balance
           DISPLAY New-Balance.                     *> <-- line added.

           STOP RUN.