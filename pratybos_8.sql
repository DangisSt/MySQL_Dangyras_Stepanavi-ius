-- Pratybos 8 --

INSERT INTO `authors`(`name`) VALUES ("John Doe"), ("Steve Example");

INSERT INTO `books`(`authorId`, `title`, `year`) VALUES (8, "New Book 1", 1999), (8, "New Book 2", 1987), (9, "New Book 3", 2007);

UPDATE `books` SET `authorId`= 9 WHERE `bookId` = 9;

DELETE FROM `authors` WHERE `authorId` IN (8, 9);

DELETE authors FROM `authors` LEFT JOIN `Books` ON `authors`.`authorId` = `books`.`authorId` WHERE `books`.`authorId` IS NULL; 

CREATE TABLE `book_authors` ( `bookId` INT(11) NOT NULL , `authorId` INT(11) NOT NULL , PRIMARY KEY (`bookId`, `authorId`));

ALTER TABLE `books` DROP `authorId`;
INSERT INTO `book_authors` (`bookId`, `authorId`) VALUES ('1', '1'), ('1', '2'), ('1', '6'), ('2', '4');

ALTER TABLE `books` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;