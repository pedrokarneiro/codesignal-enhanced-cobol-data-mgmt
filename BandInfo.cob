       IDENTIFICATION DIVISION.
       PROGRAM-ID. BandInfo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 Band.
           *> TODO: Define fields for Band-Name, Band-Genre, and State of types X(20), X(20), and X respectively
           05 Band-Name  PIC X(20).
           05 Band-Genre PIC X(20).
           05 State      PIC X.

       01 LeadSinger.
           *> TODO: Define fields for Singer-Name, Singer-Age, and State of types X(20), 9(2), and X respectively
           05 Singer-Name PIC X(20).
           05 Singer-Age  PIC 9(2).
           05 State       PIC X.

       PROCEDURE DIVISION.
           *> TODO: Move "Beatles" to Band-Name
           MOVE "Beatles" TO Band-Name.
           *> TODO: Move "Rock" to Band-Genre
           MOVE "Rock" TO Band-Genre.

           *> TODO: Move "John Lennon" to Singer-Name
           MOVE "John Lennon" TO Singer-Name.
           *> TODO: Move 40 to Singer-Age
           MOVE 40 TO Singer-Age.
           *> TODO: Move 'I' to State OF LeadSinger
           MOVE 'I' TO State OF LeadSinger.

           *> TODO: Display Band-Name
           DISPLAY Band-Name.
           *> TODO: Display Band-Genre
           DISPLAY Band-Genre.
           *> TODO: Display Singer-Name
           DISPLAY Singer-Name.
           *> TODO: Display Singer-Age
           DISPLAY Singer-Age.
           *> TODO: Display State OF Band
           DISPLAY State OF Band.
           *> TODO: Display State OF LeadSinger
           DISPLAY State OF LeadSinger.

           STOP RUN.