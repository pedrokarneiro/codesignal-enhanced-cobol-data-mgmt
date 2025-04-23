       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupItemDemo02.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Customer.
           05 Customer-Name PIC A(30).
           05 Account-Number PIC 9(10).

       PROCEDURE DIVISION.
           MOVE "Jane Smith" TO Customer-Name OF Customer.
           *> MOVE 9876543210 TO Customer. <-- Line removed.
           MOVE 9876543210 TO Account-Number OF Customer. *> <-- Line added.

           DISPLAY Customer. *> Prints 9876543210 instead of 'Jane Smith                    9876543210'

           STOP RUN.