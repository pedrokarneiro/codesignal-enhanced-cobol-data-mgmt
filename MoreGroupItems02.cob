       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoreGroupItems02.
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

          *> TODO: Assign value 'I' to the account status of Account group
           MOVE 'I' TO Account-Status of Account. *> <-- line added.
          *> TODO: Assign value 'S' to the account status of Support group
           MOVE 'S' TO Account-Status OF Support.  *> <-- line added.

           DISPLAY "Account User Name: " Account-User-Name. *> Prints "John"
           DISPLAY "Support User Name: " Support-User-Name. *> Prints "Alice"
           DISPLAY Account-Status OF Account. *> Prints "A". Should be "I" after the change
           DISPLAY Account-Status OF Support. *> Prints "D". Should be "S" after the change

           STOP RUN.