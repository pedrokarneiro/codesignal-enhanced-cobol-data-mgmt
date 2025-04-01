       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupItemDemo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> TODO: Add Account-Name alphanumeric to the Customer group item with default value 'Savings'
       01 Customer.
           05 Account-Number PIC 9(10).
           05 Account-Name PIC A(7) VALUE 'Savings'. *> <-- Line added.

       PROCEDURE DIVISION.
           MOVE 9876543210 TO Account-Number.

           DISPLAY Customer.

           STOP RUN.