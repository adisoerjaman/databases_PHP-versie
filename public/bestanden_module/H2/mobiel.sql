USE `mobiel`;

CREATE TABLE `telefoon` (
    `code` varchar(3) PRIMARY KEY,
    `merk` text NOT NULL,
    `type` varchar(16) NOT NULL, 
);

INSERT INTO `telefoon` (`code`, `merk`, `type`) VALUES
(`a1`, `Apple`, `iPhone 13`),
(`a2`, `Apple`, `iPhone 14`);