INSERT INTO `dbd_pcom7e`.`students`
(`Student_ID`,
`First_Name`,
`Last_Name`,
`Birth_Date`)
VALUES
(1001, 'Bob', 'Baker', '2001-08-25'),
(1002, 'Sally', 'Davies', '1999-10-02'),
(1003, 'Mark', 'Hanmill', '1995-06-05'),
(1004, 'Anas', 'Ali', '1980-08-03'),
(1005, 'Cheuk', 'Yin', '2002-05-01');

INSERT INTO `dbd_pcom7e`.`teachers`
(`Teacher_ID`,
`Title`,
`Last_Name`)
VALUES
(1, 'Mr.', 'Jones'),
(2, 'Ms.', 'Parker'),
(3, 'Mr.', 'Peters'),
(4, 'Mrs.', 'Patel'),
(5, 'Ms.', 'Daniels');

INSERT INTO `dbd_pcom7e`.`exam_boards`
(`Exam_Board_ID`,
`Name`)
VALUES
(1, 'BCS'),
(2, 'EdExcel'),
(3, 'OCR'),
(4, 'AQA'),
(5, 'WJEC');

INSERT INTO `dbd_pcom7e`.`courses`
(`Course_ID`,
`Teacher_ID`,
`Name`)
VALUES
(1, 1, 'Computer Science'),
(2, 2, 'Maths'),
(3, 3, 'Physics'),
(4, 4, 'Biology'),
(5, 5, 'Music');

INSERT INTO `dbd_pcom7e`.`exams`
(`Student_ID`,
`Course_ID`,
`Exam_Board_ID`,
`Exam_Score`,
`Support`)
VALUES
(1001, 1, 1, 78, 0),
(1001, 2, 2, null, null),
(1001, 3, 3, null, null),
(1002, 2, 4, 55, 1),
(1002, 4, 5, null, null),
(1002, 5, 4, null, null),
(1003, 1, 5, 90, 0),
(1003, 2, 1, null, null),
(1003, 3, 2, null, null),
(1004, 2, 3, 70, 0),
(1004, 3, 4, null, null),
(1004, 4, 5, null, null),
(1005, 1, 1, 45, 1),
(1005, 2, 2, null, null),
(1005, 5, 4, null, null);


