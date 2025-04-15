       IDENTIFICATION DIVISION.
       PROGRAM-ID. GroupItemsFixTask.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Book.
           05 Book-Title PIC X(30).
           05 Author-Name PIC X(20).

       01 Library.
           05 Library-Name PIC X(30).
           05 Book-Count PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
           MOVE "1984" TO Book-Title.
           MOVE "George Orwell" TO Author-Name.
           *> MOVE "Central Library" TO Library->Library-Name. <-- line removed.
           MOVE "Central Library" TO Library-Name OF Library. *> <-- line added.

           DISPLAY "Book Title: " Book-Title. *> Should print "1984"
           DISPLAY "Author: " Author-Name. *> Should print "George Orwell"
           DISPLAY "Library: " Library-Name. *> Should print "Central Library"

           STOP RUN.