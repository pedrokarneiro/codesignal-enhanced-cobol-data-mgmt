       IDENTIFICATION DIVISION.
       PROGRAM-ID. TeacherStudentInfo.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Teacher.
           05 Teacher-Name PIC X(20).
           05 Teacher-ID PIC 9(6) VALUE 0.
           05 Current-Status PIC X VALUE 'A'. *> Active

       01 Student.
           05 Student-Name PIC X(20).
           05 Grade PIC 9(2) VALUE 0.
           05 Current-Status PIC X VALUE 'E'. *> Enrolled

       PROCEDURE DIVISION.
           MOVE "Ms. Thompson" TO Teacher-Name.
           MOVE "Tom" TO Student-Name.

           *> TODO: Move status of the teacher to student
           MOVE Current-Status OF Teacher TO Current-Status OF Student. *> <-- line added.

           DISPLAY "Teacher Name: " Teacher-Name. *> Ms. Thompson
           DISPLAY "Student Name: " Student-Name. *> Tom
           DISPLAY Current-Status OF Teacher. *> A
           DISPLAY Current-Status OF Student. *> Now it's E, should be A after the change

           STOP RUN.
