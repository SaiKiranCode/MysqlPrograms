show databases;
create database LIBRARY;
use LIBRARY;
show tables;
create table AUTHOR(Author_id int primary key NOT NULL,  Author_Fname varchar(50), Author_Lname varchar(50));
create table PUBLICATION(Publication_id int primary key NOT NULL, Publication_name varchar(50), Author_id int, FOREIGN KEY (Author_id) REFERENCES AUTHOR(Author_id));
create table BOOKS_DETAILS(Book_id int NOT NULL primary key, Book_name varchar(50) NOT NULL, Author_id int NOT NULL, Publication_id int NOT NULL, NO_of_copies int, FOREIGN KEY (Author_id) REFERENCES AUTHOR(Author_id), FOREIGN KEY (Publication_id) REFERENCES PUBLICATION(Publication_id));

create table STUDENT(Name varchar(50) , Roll_no char(9) primary key NOT NULL, Branch_name varchar(50));

create table ISSUE_DETAILS(Issue_id int primary key NOT NULL, Book_id int, Roll_no varchar(50), Issue_Date date NOT NULL, Due_Date date NOT NULL, Return_date date,  FOREIGN KEY (Book_id) REFERENCES BOOKS_DETAILS(Book_id), FOREIGN KEY (Roll_no) REFERENCES STUDENT(Roll_no));

INSERT INTO AUTHOR VALUES(1001, "Andrew", "Trask");
INSERT INTO AUTHOR VALUES(1001,"IAN", "Goodfellow");
INSERT INTO AUTHOR VALUES(1002,"IAN", "Goodfellow");
INSERT INTO PUBLICATION VALUES(100612, "XYZ", 1002);
INSERT INTO PUBLICATION VALUES(100042, "PEARSON",1001);
INSERT INTO PUBLICATION VALUES(100012, "MANNING",1001);
INSERT INTO PUBLICATION VALUES(100001, "Grooking",1001);

select * from PUBLICATION;
select * from AUTHOR;
select * from AUTHOR, PUBLICATION where AUTHOR.Author_id = PUBLICATION.Author_id;

INSERT INTO BOOKS_DETAILS VALUES(101,"DL", 1001,100001, 100000);
INSERT INTO BOOKS_DETAILS VALUES(102,"SA DL", 1001,100012, 100);
INSERT INTO BOOKS_DETAILS VALUES(103,"CV", 1002,100612, 10040);

INSERT INTO STUDENT VALUES("Archit", 29, "CSE");
INSERT INTO STUDENT VALUES("Ashutosh", 06, "CSE");
select * from STUDENT;
select * from BOOKS_DETAILS;

INSERT INTO ISSUE_DETAILS VALUES(103,102,29,"2019-12-08","2019-10-25","2019-10-27");
INSERT INTO ISSUE_DETAILS VALUES(102,101,6,"2019-12-10","2019-10-27","2019-10-29");
INSERT INTO ISSUE_DETAILS VALUES(104,103,29,"2019-12-9","2019-10-26","2019-10-27");

select * from ISSUE_DETAILS;

select * from AUTHOR, PUBLICATION, BOOKS_DETAILS, STUDENT, ISSUE_DETAILS where AUTHOR.Author_id = PUBLICATION.Author_id and BOOKS_DETAILS.Publication_id = PUBLICATION.Publication_id and AUTHOR.Author_id = BOOKS_DETAILS.Author_id and BOOKS_DETAILS.Book_id = ISSUE_DETAILS.Book_id and STUDENT.Roll_no = ISSUE_DETAILS.Roll_no;


select Author_Fname, Publication_name, Book_name, No_of_copies, Name, STUDENT.Roll_no, Branch_name, Issue_Date from AUTHOR, PUBLICATION, BOOKS_DETAILS, STUDENT, ISSUE_DETAILS where AUTHOR.Author_id = PUBLICATION.Author_id and BOOKS_DETAILS.Publication_id = PUBLICATION.Publication_id and AUTHOR.Author_id = BOOKS_DETAILS.Author_id and BOOKS_DETAILS.Book_id = ISSUE_DETAILS.Book_id and STUDENT.Roll_no = ISSUE_DETAILS.Roll_no;
