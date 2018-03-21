-- Pratybos 2 --

-- 1. 
INSERT INTO `Authors`(`name`) VALUES ("John Joe"), ("Steve Stove");
-- 2. 
INSERT INTO `Books`(`authorId`, `title`, `year`) VALUES (8, "New World!", 1999), (8, "Who?", 1987), (9, "Goof", 2007);
-- 3. 
UPDATE `Books` SET `authorId`= 9 WHERE `bookId` = 9;