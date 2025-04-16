       IDENTIFICATION DIVISION.
       PROGRAM-ID. ComputeDemo03.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Customer.
           02 Account-Balance PIC S9(5)V99 VALUE 100.00.

       01 Customer2.
           02 Account-Balance PIC S9(5)V99 VALUE 50.00.

       01 Total-Balance PIC S9(5)V99.

       PROCEDURE DIVISION.
           *> COMPUTE Total-Balance = Account-Balance OF Customer 
           *>                       + Account-Balance.              <-- old line.
           COMPUTE Total-Balance = Account-Balance OF Customer 
                                 + Account-Balance OF Customer2. *> <-- line added.

           DISPLAY Total-Balance. *> Should print 150.00, but it's not compiling due to an error.

           STOP RUN.