DROP DATABASE IF EXISTS `examentraining`;

CREATE DATABASE `examentraining`;

USE `examentraining`;

CREATE TABLE `vakken` (
    `vak` varchar(16) PRIMARY KEY,
    `docentcode` varchar(3) NOT NULL,
    `docentnaam` text NOT NULL,
    `lokaal` text,
);

CREATE TABLE `leerlingen` (
    `id_leerling` varchar(3) PRIMARY KEY,
    `naam` text NOT NULL,
    `klas` varchar(16) NOT NULL, 
);

INSERT INTO `leerlingen` (`id_leerling`, `naam`, `klas`) VALUES
(`001`, `Adi`, `H4a`),
(`002`, `Badi`, `H4a`);