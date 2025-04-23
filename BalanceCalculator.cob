       IDENTIFICATION DIVISION.
       PROGRAM-ID. BalanceCalculator.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           02 Initial-Balance PIC S9(5)V99 VALUE 1000.00.
           02 Deducted-Amount PIC S9(5)V99 VALUE 100.00.
           02 Ratio PIC S9(5)V99.
           02 Final-Balance PIC S9(5)V99.

       01 Customer2.
           02 Initial-Balance PIC S9(5)V99 VALUE 500.00.
           02 Added-Amount PIC S9(5)V99 VALUE 50.00.
           02 Ratio PIC S9(5)V99.
           02 Final-Balance PIC S9(5)V99.

       01 Overall-Balance PIC S9(6)V99.

       PROCEDURE DIVISION.
           COMPUTE Ratio OF Customer = 1 
                                     - (Deducted-Amount OF Customer
                                       / Initial-Balance OF Customer).
           *> TODO: Calculate the final balance of the customer by multiplying the initial balance with their ratio.
           COMPUTE
            Final-Balance OF Customer = Initial-Balance OF Customer
                                      * Ratio OF Customer.    *> <-- line added

           COMPUTE Ratio OF Customer2 = 1
                                      + (Added-Amount OF Customer2
                                        / Initial-Balance OF Customer2).

           *> TODO: Calculate the final balance of the customer2 by multiplying the initial balance with their ratio.
           COMPUTE
            Final-Balance OF Customer2 = Initial-Balance OF Customer2
                                       * Ratio OF Customer2. *> <-- line added

           *> TODO: Calculate the overall balance by adding the final balances of the two customers.
           COMPUTE
            Overall-Balance =  Final-Balance OF Customer
                            + Final-Balance OF Customer2.      *> <-- line added

           DISPLAY 'Overall Balance: ' Overall-Balance. *> Should display 1450.00

           STOP RUN.