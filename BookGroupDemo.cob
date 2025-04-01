       IDENTIFICATION DIVISION.
       PROGRAM-ID. BookGroupDemo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> TODO: Define the group item Book with fields Book-Title and ISBN
       01 Book.                                     *> <-- Added line.
           05 Book-Title PIC A(16).                 *> <-- Added line.
           05 ISBN PIC 9(13).                       *> <-- Added line.

       PROCEDURE DIVISION.
           *> TODO: Move the title "The Great Gatsby" to Book-Title
           MOVE "The Great Gatsby" TO Book-Title.   *> <-- Added line.
           *> TODO: Move the ISBN 9780743273565 to ISBN
           MOVE 9780743273565 TO ISBN.              *> <-- Added line.

           *> TODO: Display the contents of Book-Title and ISBN
           DISPLAY Book-Title.                      *> <-- Added line.
           DISPLAY ISBN.                            *> <-- Added line.
           *> TODO: Display the entire Book group item
           DISPLAY Book.                            *> <-- Added line.
           *> TODO: Display the Book-Title field from the Book group item
           DISPLAY Book-Title OF Book.              *> <-- Added line.

           STOP RUN.