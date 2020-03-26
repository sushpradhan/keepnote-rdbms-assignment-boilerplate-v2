select * from keepNote.Note where note_creation_date='2020-04-01';

select * from keepNote.Note where note_creation_date='2020-04-01';

select * from keepNote.Category where category_creation_date>'2020-03-22';

select note_id from keepNote.usernote where user_id=101;

UPDATE `keepNote`.`Note`
SET
`note_id` = 4,
`note_title` = 'triptoDelhi',
`note_content` = 'visit indiagate, batla house',
`note_status` = 'pending',
`note_creation_date` = '2020-04-05'
WHERE `note_id` = 1;

select * from keepNote.Note where note_id= (select note_id from keepNote.usernote where user_id=101);

select * from keepNote.Note where note_id= (select note_id from keepNote.NoteCategory where category_id=111);

INSERT INTO `keepNote`.`Note`
(`note_id`,
`note_title`,
`note_content`,
`note_status`,
`note_creation_date`)
VALUES
(4,
'Learning mysql',
'Joins, Normalization',
'Pending',
'2020-04-03');

INSERT INTO `keepNote`.`usernote` (`usernote_id`, `user_id`, `note_id`) VALUES ('7004', '105', '4');

INSERT INTO `keepNote`.`Note` (`note_id`, `note_title`, `note_content`, `note_status`, `note_creation_date`) VALUES ('5', 'Learning Full Stack', 'front end, back end', 'ongoing', '2020-04-04');

INSERT INTO `keepNote`.`NoteCategory` (`notecategory_id`, `note_id`, `category_id`) VALUES ('2004', '4', '444');

INSERT INTO `keepNote`.`Reminder` (`reminder_id`, `reminder_name`, `reminder_descr`, `reminder_type`, `reminder_creation_date`) VALUES ('1004', 'Shopping', 'Grocery, cloths', 'silent', '2020-02-04');

INSERT INTO `keepNote`.`Notereminder` (`notereminder_id`, `note_id`, `reminder_id`) VALUES ('5005', '5', '1005');

delete from UserNote where user_id=202 AND note_id=2;

delete from Notereminder where note_id=2;

delete from NoteCategory where note_id=2;

delete from Note where note_id=2;

delete from NoteCategory where category_id=222 AND note_id=2;

delete from Notereminder where note_id=2;

delete from UserNote where note_id=7003;

delete from Note where note_id=2;
