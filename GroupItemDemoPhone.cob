       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupItemDemoPhone.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> TODO: Add the Phone-Number field to the Customer group item.
       01 Customer.
           05 Customer-Name PIC A(30).
           05 Account-Number PIC 9(10).
           05 Phone-Number PIC X(15).           *> <-- Added line.

       PROCEDURE DIVISION.
           MOVE "Jane Smith" TO Customer-Name.
           MOVE 9876543210 TO Account-Number.
           *> TODO: Move the phone number "123-456-7890" to the Phone-Number field.
           MOVE "123-456-7890" TO Phone-Number. *> <-- Added line.

           DISPLAY Customer-Name OF Customer.
           DISPLAY Account-Number OF Customer.
           *> TODO: Display the Phone-Number field.
           DISPLAY Phone-Number OF CUSTOMER.    *> <-- Added line.
           *> DISPLAY Phone-Number.                *> <-- Alternative.

           STOP RUN.