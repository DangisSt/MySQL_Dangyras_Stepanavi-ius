-- Pratybos 2 --

-- 1. 
INSERT INTO `authors`(`name`) VALUES ("John Joe"), ("Steve Stove");
-- 2. 
INSERT INTO `books`(`authorId`, `title`, `year`) VALUES (8, "New World!", 1999), (8, "Who?", 1987), (9, "Goof", 2007);
-- 3. 
UPDATE `books` SET `authorId`= 9 WHERE `bookId` = 9;