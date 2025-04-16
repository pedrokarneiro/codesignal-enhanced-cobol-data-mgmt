       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeDemo02.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           02 Account-Balance PIC S9(5)V99 VALUE 100.00.
           02 Deposit PIC S9(5)V99 VALUE 45.00.
           02 Withdraw PIC S9(5)V99 VALUE 20.00.
           02 New-Balance PIC S9(5)V99.

       01 Calculated-Tax PIC S9(3)V99 VALUE 0.1.

       PROCEDURE DIVISION.
           *> TODO: Update the new balance calculation to subtract the withdrawal amount as well.
           *> COMPUTE New-Balance = Account-Balance + Deposit - Calculated-Tax.            <-- old formula version.
           COMPUTE New-Balance = Account-Balance 
                               + Deposit 
                               - Calculated-Tax 
                               - Withdraw. *>  <-- line added.
           DISPLAY 'New Balance: ' New-Balance. *> Should be 124.90 after the cahnge. Now it's 144.90.

           STOP RUN.