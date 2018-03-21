-- Pratybos 7 --

-- 1. 
CREATE TABLE `book_authors` ( `bookId` INT(11) NOT NULL , `authorId` INT(11) NOT NULL , PRIMARY KEY (`bookId`, `authorId`));
-- 2. 
ALTER TABLE `books` DROP `authorId`;
INSERT INTO `book_authors` (`bookId`, `authorId`) VALUES ('1', '1'), ('1', '2'), ('1', '6'), ('2', '4');
-- 3.
SELECT `books`.`title`, GROUP_CONCAT(`authors`.`name`) FROM `books` INNER JOIN `book_authors` ON `books`.`bookId` = `Book_authors`.`bookId` INNER JOIN `authors` ON `authors`.`authorId` = `book_authors`.`authorId` GROUP BY `books`.`bookId`;
-- 4. 
ALTER TABLE `books` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;