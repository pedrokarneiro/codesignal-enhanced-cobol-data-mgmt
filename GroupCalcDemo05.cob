       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupCalcDemo.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> TODO: Define the 'Account' group item with 'Account-Balance',
       *> 'Deposit', and 'New-Balance' with initial value set to 0
       *> for all fields.
       01 Account.                                 *> <-- Line added.
           05 Account-Balance PIC 9(6) VALUE 0.    *> <-- Line added.
           05 Deposit         PIC 9(6) VALUE 0.    *> <-- Line added.
           05 New-Balance     PIC 9(6) VALUE 0.    *> <-- Line added.


       PROCEDURE DIVISION.
           *> TODO: Assign value 5000 to 'Account-Balance'.
           MOVE 5000 TO Account-Balance.              *> <-- Line added.

           *> TODO: Assign value 1500 to 'Deposit'.
           MOVE 1500 TO Deposit.                      *> <-- Line added.

           *> TODO: Add 'Account-Balance' to 'Deposit' and store the result in 'New-Balance'.
           ADD Account-Balance TO Deposit
                                  GIVING New-Balance. *> <-- Line added.

           *> TODO: Display 'New-Balance' of 'Account'. *> Should display 6500
           DISPLAY New-Balance OF Account.            *> <-- Line added.

           STOP RUN.
