       IDENTIFICATION DIVISION.
       PROGRAM-ID. FeeBalanceCalculator.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> TODO: Define a group item called BankInfo with fields Initial-Balance, Deposit, and New-Balance.
       *> Assign values to Initial-Balance and Deposit: 150 and 60 respectively.
       01 BankInfo.
           05 Initial-Balance PIC 9(6)V99 VALUE 150.
           05 Deposit         PIC 9(6)V99 VALUE 60.
           05 New-Balance     PIC 9(6)V99.
       
       *> TODO: Define a field called Admin-Fee and assign it a value 3.50.
       01 Admin-Fee           PIC 9(6)V99 VALUE 3.50.

       PROCEDURE DIVISION.
           *> TODO: Compute the New-Balance by adding Deposit to Initial-Balance and then subtracting Admin-Fee
           COMPUTE New-Balance = Deposit + Initial-Balance - Admin-Fee
    
           *> TODO: Display the New-Balance with a message.
           DISPLAY "New balance: " New-Balance.
    
           STOP RUN.