CREATE TABLE IF NOT EXISTS vdummy (
    `user_id` INT,
    `name` VARCHAR(14) CHARACTER SET utf8,
    `role_id` INT,
    `roll_no` VARCHAR(10) CHARACTER SET utf8,
    `year_study` INT,
    `phone` INT,
    `department_id` INT,
    `division` VARCHAR(1) CHARACTER SET utf8,
    `email_id` VARCHAR(24) CHARACTER SET utf8,
    `password` VARCHAR(8) CHARACTER SET utf8
);
INSERT INTO vdummy VALUES
    (NULL,'Student 1 Name',2,'19102A0023',2,7506852144,1,'A','student1.name@vit.edu.in','student1'),
    (NULL,'Student 2 Name',2,'19102A0099',2,9999999999,3,'B','student2.name@vit.edu.in','student2'),
    (NULL,'Student 3 Name',2,'18101A0088',3,7777777777,2,'A','student3.name@vit.edu.in','student3'),
    (NULL,'Student 4 Name',2,'18102B0098',3,9090909090,2,'B','student4.name@vit.edu.in','student4'),
    (NULL,'Student 5 Name',2,'17101A0099',4,8989898989,1,'A','student5.name@vit.edu.in','student5'),
    (NULL,'Student 6 Name',2,'17102A0098',4,9797979797,2,'B','student6.name@vit.edu.in','student6'),
    (NULL,'Student 7 Name',2,'17102B0079',4,8888888888,3,'A','student7.name@vit.edu.in','student7'),
    (NULL,'Staff 1 Name',1,NULL,NULL,909090909,1,NULL,'staff1.name@vit.edu.in','staff1'),
    (NULL,'Staff 2 Name',1,NULL,NULL,8181818181,3,NULL,'staff2.name@vit.edu.in','staff2'),
    (NULL,'Staff 3 Name',1,NULL,NULL,8787878787,2,NULL,'staff3.name@vit.edu.in','staff3');
