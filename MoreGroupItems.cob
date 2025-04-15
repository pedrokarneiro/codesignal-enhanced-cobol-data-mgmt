
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MoreGroupItems.
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

           MOVE 'I' TO Account-Status OF Support.

           DISPLAY "Account User Name: " Account-User-Name. *> John
           DISPLAY "Support User Name: " Support-User-Name. *> Alice
           DISPLAY Account-Status OF Account. *> A
           DISPLAY Account-Status OF Support. *> I

           STOP RUN.