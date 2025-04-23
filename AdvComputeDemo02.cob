       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeDemo02.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           05 Account-Balance PIC S9(5)V99 VALUE 100.00.
           *> 05 Interest-Rate PIC S9(3)V99 VALUE 0.05.      <-- old line
           05 Interest-Rate PIC S9(3)V99 VALUE 0.06. *>        <-- line added.
           *> 05 Monthly-Spendings PIC S9(5)V99 VALUE 50.00. <-- old line
           05 Monthly-Spendings PIC S9(5)V99 VALUE 70.00. *>   <-- line added.

       01 Result PIC S9(5)V99.

       PROCEDURE DIVISION.
           COMPUTE Result = Account-Balance 
                          + (Account-Balance * Interest-Rate).
           DISPLAY "New Balance is: " Result. *> Prints 105.0 will be 106.0 after the change

           COMPUTE Result = Monthly-Spendings / 30.
           DISPLAY "Average daily spendings: " Result. *> Prints 1.66 will be 2.33 after the change

           STOP RUN.