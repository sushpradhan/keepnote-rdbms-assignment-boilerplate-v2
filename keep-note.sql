select * from User where user_id=1 and user_password="root123";
select * from Note where note_creation_date = '2019-11-21';
select * from Category where category_creation_date >'2019-11-21';
select note_id from Usernote where user_id=2;
update  Note set note_title="Note1",note_content="Note1-content" ,note_status="completed" where note_id=2;
select * from User u INNER JOIN UserNote usernote  on u.user_id and usernote.user_id where u.user_id=1;
SELECT * FROM Note INNER JOIN NoteCategory ON Note.note_id=NoteCategory.note_id where NoteCategory.category_id=6;
select * from Reminder r INNER JOIN Notereminder nr on r.reminder_id=nr.reminder_id where r.reminder_id=1;
select * from Reminder where reminder_id=2;
delete from Note where note_id=2;delete from NoteCategory where note_id=1;delete from UserNote where note_id=2 and user_id=1;delete from NoteReminder where note_id=1;
insert into Note values("Note5", "Note5-content", 'active', "2010-06-10");insert into UserNote (user_id, note_id) values(1, last_insert_id());
insert into Note values( "Note5", "note5-content", "Progress", "2000-06-20");
insert into NoteCategory values(last_insert_id(), 5);
insert into Reminder values("rem5", "rem5-desc", "1hr", "2000-06-20", 1);
insert into NoteReminder values(2,last_insert_id());
delete from UserNote where user_id=2 AND note_id=2;
delete from NoteReminder where note_id=2;
delete from NoteCategory where note_id=2;
delete from Note where note_id=2;
delete from NoteCategory where category_id=5 AND note_id=2;
delete from NoteReminder where note_id=2;
delete from UserNote where note_id=2;
delete from Note where note_id=2;
create trigger del_note before delete on Note FOR EACH ROW Begin delete from UserNote where note_id=old.note_id; delete from NoteReminder where note_id=old.note_id; delete from NoteCategory where note_id=old.note_id; END; 
delete from Note where note_id=6;
create trigger del_user before delete on User FOR EACH ROW Begin delete from UserNote where note_id=old.user_id; delete from NoteReminder where note_id=old.user_id;  delete from Category where category_creator=old.user_id;  delete from NoteCategory where note_id=old.user_id;  END;
delete from User where user_id=1;
INSERT INTO Note VALUES ('1', 'Note1', 'Note1-content', 'Inprogress', '2007-02-03');INSERT INTO Note VALUES ('2', 'Note2', 'Note2-content', 'InActive', '2007-01-31');INSERT INTO Note VALUES ('3', 'Note3', 'Note3-content', 'Active', '2007-02-02');INSERT INTO Note VALUES ('4', 'Note4', 'Note4-content', 'Active', '2007-03-06');
INSERT INTO Category VALUES ( 'Category1', 'Category1-desc', '2007-02-06', '101');INSERT INTO Category VALUES ( 'Category2', 'Category2-desc', '2007-06-21', '102');INSERT INTO Category VALUES ( 'Category3', 'Category3-desc', '2007-05-05', '103');INSERT INTO Category VALUES ( 'Category4', 'Category4-desc', '2007-06-08', '104');
INSERT INTO NoteCategory VALUES ( '1', '101');
INSERT INTO NoteCategory VALUES ( '2', '201');
INSERT INTO NoteCategory VALUES ( '3', '301');
INSERT INTO UserNote VALUES ( '1', '1');
INSERT INTO UserNote VALUES ( '2', '2');
INSERT INTO Reminder VALUES ( 'rem1', 'rem1-desc', 'erveryday', '2004-03-26', '1');
INSERT INTO Reminder VALUES ( 'rem2', 'rem2-desc', 'oneday', '2004-06-25', '2');
INSERT INTO User VALUES (1,'Pradeep','1991-12-12','svns',8904128500);
INSERT INTO User VALUES (2,'Sai','1991-12-12','sure',8217862238);
CREATE TABLE User(`user_id` BIGINT(15) NOT NULL AUTO_INCREMENT,  `user_name` VARCHAR(45) NOT NULL ,  `user_added_date` DATE NULL,  `user_password` VARCHAR(45) NULL,  `user_mobile` VARCHAR(15) NULL,  PRIMARY KEY (`user_id`));
CREATE TABLE Note(`note_id` BIGINT(15) NOT NULL AUTO_INCREMENT,  `note_title` VARCHAR(45) NOT NULL,  `note_content` VARCHAR(500) NULL,  `note_status` VARCHAR(10) NULL,  `note_creation_date` DATE NULL,  PRIMARY KEY (`note_id`));
CREATE TABLE Category(`category_id` BIGINT(15) NOT NULL AUTO_INCREMENT,  `category_name` VARCHAR(45) NOT NULL,  `category_descr` VARCHAR(45) NULL,  `category_creation_date` DATE NULL,  `category_creator` BIGINT(15) NULL,  PRIMARY KEY (`category_id`),  FOREIGN KEY (`category_creator`) REFERENCES User(`user_id`));
CREATE TABLE Reminder(`reminder_id` BIGINT(15) NOT NULL AUTO_INCREMENT,  `reminder_name` VARCHAR(45) NOT NULL,  `reminder_descr` VARCHAR(200) NULL,  `reminder_type` VARCHAR(20) NULL,  `reminder_creation_date` DATE NULL,  `reminder_creator` BIGINT(15) NULL,  PRIMARY KEY (`reminder_id`),  FOREIGN KEY (`reminder_creator`) REFERENCES User(`user_id`));
CREATE TABLE NoteCategory(`notecategory_id` BIGINT(15) NOT NULL AUTO_INCREMENT,  `note_id` BIGINT(15) NOT NULL,  `category_id` BIGINT(15) NOT NULL,  PRIMARY KEY (`notecategory_id`),  FOREIGN KEY (`note_id`) REFERENCES Note(`note_id`),  FOREIGN KEY (`category_id`) REFERENCES Category(`category_id`));
CREATE TABLE NoteReminder(`notereminder_id` BIGINT(15) NOT NULL AUTO_INCREMENT,  `note_id` BIGINT(15) NOT NULL,  `reminder_id` BIGINT(15) NOT NULL,  PRIMARY KEY (`notereminder_id`),  FOREIGN KEY (`note_id`) REFERENCES Note(`note_id`),  FOREIGN KEY (`reminder_id`) REFERENCES Reminder(`reminder_id`));
CREATE TABLE UserNote(  `usernote_id` BIGINT(15) NOT NULL AUTO_INCREMENT,  `user_id` BIGINT(15) NOT NULL,  `note_id` BIGINT(15) NOT NULL,  PRIMARY KEY (`usernote_id`),  FOREIGN KEY (`user_id`) REFERENCES User(`user_id`),  FOREIGN KEY (`note_id`) REFERENCES Note(`note_id`));
