-- Adminer 4.8.0 MySQL 5.7.24 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `bobot`;
CREATE TABLE `bobot` (
  `id_bobot` int(11) NOT NULL AUTO_INCREMENT,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL,
  `c6` int(11) NOT NULL,
  PRIMARY KEY (`id_bobot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `bobot` (`id_bobot`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`) VALUES
(1,	1,	4,	2,	3,	2,	4);

DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `per_pem` decimal(8,2) NOT NULL,
  `pel_pem` decimal(8,2) NOT NULL,
  `pen_pem` decimal(8,2) NOT NULL,
  `mel_mem` decimal(8,2) NOT NULL,
  `tug_tam` decimal(8,2) NOT NULL,
  `peng_keg` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `nilai` (`id_nilai`, `nama`, `per_pem`, `pel_pem`, `pen_pem`, `mel_mem`, `tug_tam`, `peng_keg`) VALUES
(1,	'M. Nurcholis',	60.00,	64.29,	70.45,	58.33,	60.00,	56.25),
(2,	'david',	100.00,	100.00,	77.27,	83.33,	80.00,	81.25),
(3,	'Rukmaja',	0.00,	0.00,	0.00,	0.00,	0.00,	0.00);

DROP TABLE IF EXISTS `nilai2`;
CREATE TABLE `nilai2` (
  `id_nilai2` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `k1` int(4) NOT NULL,
  `k2` int(4) NOT NULL,
  `k3` int(4) NOT NULL,
  `k4` int(4) NOT NULL,
  `k5` int(4) NOT NULL,
  `k6` int(4) NOT NULL,
  `k7` int(4) NOT NULL,
  `k8` int(4) NOT NULL,
  `k9` int(4) NOT NULL,
  `k10` int(4) NOT NULL,
  `k11` int(4) NOT NULL,
  `k12` int(4) NOT NULL,
  `k13` int(4) NOT NULL,
  PRIMARY KEY (`id_nilai2`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `nilai2_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `pegawai` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `nilai2` (`id_nilai2`, `id_user`, `k1`, `k2`, `k3`, `k4`, `k5`, `k6`, `k7`, `k8`, `k9`, `k10`, `k11`, `k12`, `k13`) VALUES
(1,	30,	1,	1,	1,	1,	1,	1,	1,	1,	4,	4,	4,	4,	4),
(2,	30,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1),
(3,	40,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	4),
(4,	29,	4,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1,	1);

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `umur` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `masakerja` varchar(30) NOT NULL,
  `pend_ter` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `pegawai` (`id`, `nama`, `umur`, `jenis`, `jabatan`, `masakerja`, `pend_ter`) VALUES
(29,	'David',	'25',	'Laki-laki',	'Guru',	'3 Tahun',	'S1'),
(30,	'Fauzal Mubarok',	'30',	'Laki-laki',	'Guru',	'5 Tahun/Lebih',	'S1'),
(39,	'Budi Anduk',	'20',	'Laki-laki',	'Manager',	'2 Tahun',	'SMA'),
(40,	'Restu',	'20',	'Laki-laki',	'Supervisor',	'1 Tahun',	'S1'),
(41,	'aaa',	'12',	'Laki-laki',	'Manager',	'1 Tahun',	'SMA'),
(42,	'Restuaaaaaa',	'20',	'Laki-laki',	'Supervisor',	'1 Tahun',	'SMA');

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1,	'Kepala Sekolah',	'admin',	'admin123',	'admin'),
(2,	'Guru',	'user',	'user123',	'user'),
(4,	'David',	'29',	'user123',	'user');

-- 2022-04-05 11:11:46
