% Facts: student(StudentName, SubjectCode)
student('Alice', 'CS101').
student('Bob', 'CS102').
student('Charlie', 'CS101').
student('Diana', 'CS103').
student('Eve', 'CS102').

% Facts: teacher(TeacherName, SubjectCode)
teacher('Dr. Smith', 'CS101').
teacher('Prof. Johnson', 'CS102').
teacher('Dr. Adams', 'CS103').

% Facts: subject(SubjectCode, SubjectName)
subject('CS101', 'Artificial Intelligence').
subject('CS102', 'Data Structures').
subject('CS103', 'Operating Systems').

% Rule to find the teacher of a student
teacher_of_student(StudentName, TeacherName) :-
    student(StudentName, SubjectCode),
    teacher(TeacherName, SubjectCode).

% Rule to find the subject a student is enrolled in
subject_of_student(StudentName, SubjectName) :-
    student(StudentName, SubjectCode),
    subject(SubjectCode, SubjectName).

% Rule to find all students taught by a teacher
students_of_teacher(TeacherName, StudentName) :-
    teacher(TeacherName, SubjectCode),
    student(StudentName, SubjectCode).

% Rule to find the subject taught by a teacher
subject_of_teacher(TeacherName, SubjectName) :-
    teacher(TeacherName, SubjectCode),
    subject(SubjectCode, SubjectName).