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

CREATE TABLE `inschrijvingen` (
    `id_leerling` varchar(3) NOT NULL,
    `vak` varchar(16) NOT NULL,
    PRIMARY KEY (`id_leerling`,`vak`),
    CONSTRAINT FOREIGN KEY (`id_leerling`) REFERENCES `leerlingen` (`id_leerling`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT FOREIGN KEY (`vak`) REFERENCES `vakken` (`vak`) ON DELETE RESTRICT ON UPDATE RESTRICT
);

INSERT INTO `leerlingen` (`id_leerling`, `naam`, `klas`) VALUES
(`001`, `Adi`, `H4a`),
(`002`, `Badi`, `H4a`);