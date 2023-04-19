DROP DATABASE IF EXISTS `sneeuwmuis`;

CREATE DATABASE `sneeuwmuis`;

USE `sneeuwmuis`;

CREATE TABLE `dieren` (
    `id` int AUTO_INCREMENT PRIMARY KEY, 
    `product` text NOT NULL,
    `prijs` int NOT NULL
);

INSERT INTO `dieren` (`id`, `product`, `prijs`) VALUES
(1, 'Cavia', '40'),
(2, 'Goudvis', '2'),
(3, 'Kanarie', '15');