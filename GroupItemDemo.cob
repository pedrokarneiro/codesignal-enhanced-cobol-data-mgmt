       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupItemDemo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Customer.
           05 Customer-Name PIC X(30).
           05 Account-Number PIC 9(10).

       PROCEDURE DIVISION.
           MOVE "Jane Smith" TO Customer-Name.
           MOVE 9876543210 TO Account-Number.

           DISPLAY "Customer Name: " Customer-Name.
           DISPLAY "Account Number: " Account-Number.

           DISPLAY Customer.
           DISPLAY Customer-Name OF Customer.
           STOP RUN.
           