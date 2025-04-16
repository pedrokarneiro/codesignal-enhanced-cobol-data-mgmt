       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeDemo05.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           02 Account-Balance PIC S9(5)V99 VALUE 100.00.
           02 Subtract-Amount PIC S9(5)V99 VALUE 10.00.
           02 Net-Balance     PIC S9(5)V99.

       01 Customer2.
           02 Account-Balance PIC S9(5)V99 VALUE 50.00.
           02 Add-Amount      PIC S9(5)V99 VALUE 5.00.
           02 Net-Balance     PIC S9(5)V99.

       01 Total-Balance PIC S9(5)V99.

       PROCEDURE DIVISION.
           *> TODO: Calculate Net balance for Customer 1 by subtracting the subtract amount from account balance of the customer.
           COMPUTE Net-Balance OF Customer = Account-Balance OF Customer
                                          - Subtract-Amount OF Customer.

           *> TODO: Calculate Net balance for Customer 2 by adding the add amount to account balance of the customer.
           COMPUTE Net-Balance
             OF Customer2 = Account-Balance OF Customer2
             + Add-Amount OF Customer2.

           *> TODO: Calculate Total balance by adding the net balance of Customer 1 and Customer 2.
           COMPUTE Total-Balance = Net-Balance OF Customer
                                 + Net-Balance OF Customer2

           DISPLAY 'Total Balance: ' Total-Balance. *> Should display 145.00

           STOP RUN.