       IDENTIFICATION DIVISION.
       PROGRAM-ID. SuperheroProfile.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Hero.
           05 Hero-Name PIC A(30).
           05 Power-Level PIC 9(3).
           *> TODO: Add the Codename field as alphanumeric with length 20
           05 Codename PIC X(20).              *> <-- Line added.
           *> TODO: Add the Alliances field as alphanumeric with length 30
           05 Alliances PIC X(30).             *> <-- Line added.

       PROCEDURE DIVISION.
           MOVE "Batman" TO Hero-Name.
           MOVE 90 TO Power-Level.
           *> TODO: Assign value "Dark Knight" to the Codename field
           MOVE "Dark Knight" TO Codename.     *> <-- Line added.
           *> TODO: Assign value "Justice League" to the Alliances field
           MOVE "Justice League" TO Alliances. *> <-- Line added.

           DISPLAY "Hero Name: " Hero-Name.
           DISPLAY "Power Level: " Power-Level.

           *> TODO: Display Codename and Alliances fields
           DISPLAY Codename OF Hero.           *> <-- Line added.
           DISPLAY Alliances OF Hero.          *> <-- Line added.

           DISPLAY Hero.
           STOP RUN.