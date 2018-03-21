-- Pratybos 8 --

INSERT INTO `Authors`(`name`) VALUES ("John Doe"), ("Steve Example");

INSERT INTO `Books`(`authorId`, `title`, `year`) VALUES (8, "New Book 1", 1999), (8, "New Book 2", 1987), (9, "New Book 3", 2007);

UPDATE `Books` SET `authorId`= 9 WHERE `bookId` = 9;

DELETE FROM `Authors` WHERE `authorId` IN (8, 9);

DELETE Authors FROM `Authors` LEFT JOIN `Books` ON `Authors`.`authorId` = `Books`.`authorId` WHERE `Books`.`authorId` IS NULL; 

CREATE TABLE `book_Authors` ( `bookId` INT(11) NOT NULL , `authorId` INT(11) NOT NULL , PRIMARY KEY (`bookId`, `authorId`));

ALTER TABLE `Books` DROP `authorId`;
INSERT INTO `book_Authors` (`bookId`, `authorId`) VALUES ('1', '1'), ('1', '2'), ('1', '6'), ('2', '4');

ALTER TABLE `Books` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;