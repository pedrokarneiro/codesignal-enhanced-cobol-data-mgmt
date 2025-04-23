       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoreGroupItems03.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Account.
           05 Account-User-Name PIC X(20).
           05 Account-Balance PIC 9(6) VALUE 0.
           05 Account-Status PIC X VALUE 'A'.

       01 Support.
           05 Support-User-Name PIC X(20).
           05 Counter PIC 9(2) VALUE 0.
           05 Account-Status PIC X VALUE 'D'.

       PROCEDURE DIVISION.
           MOVE "John" TO Account-User-Name.
           MOVE "Alice" TO Support-User-Name.

           *> TODO: Assign value 'I' to the account status of the Account group to represent the 'Inactive' state.
           MOVE 'I' TO Account-Status OF Account. *> <-- line added.

           *> TODO: Display account statuses of Account and Support groups.
           DISPLAY Account-Status OF Account Account-Status OF Support.

           STOP RUN.