       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeDemo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           05 Account-Balance PIC S9(5)V99 VALUE 100.00.
           05 Interest-Rate PIC S9(3)V99 VALUE 0.5.
           05 Monthly-Spendings PIC S9(5)V99 VALUE 50.00.

       01 Result PIC S9(5)V99.

       PROCEDURE DIVISION.
           *> COMPUTE Result = Account-Balance + (Account-Balance * Interest). <-- old line.
           COMPUTE Result = Account-Balance 
                          + (Account-Balance * Interest-Rate). *>              <-- line added.
           DISPLAY "New Balance is: " Result. *> Should print 150.0

           COMPUTE Result = Monthly-Spendings / 30.
           DISPLAY "Average daily spendings: " Result. *> Should print 1.66

           STOP RUN.
