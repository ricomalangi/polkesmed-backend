-- Adminer 4.8.1 MySQL 5.7.24 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `tb_dokter`;
CREATE TABLE `tb_dokter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `poliklinik_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_dokter` (`id`, `uuid`, `nama_dokter`, `picture`, `poliklinik_id`) VALUES
(12,	'c20097c8-eab6-4600-811c-c304f4821544',	'Primadona Br Bangun',	'dokter-1702984280187.png',	'2606bb53-1360-437c-8507-060f55014c44'),
(13,	'55293359-f040-4e4f-911f-236e8df18f66',	'Olvariani Sitepu',	'dokter-1702984254470.png',	'2606bb53-1360-437c-8507-060f55014c44'),
(14,	'24576e89-1a18-4c33-b15c-8a3cd3c879d9',	'Jenni Muriwati',	'dokter-1702984300934.png',	'2606bb53-1360-437c-8507-060f55014c44'),
(15,	'c8538763-c611-4b0b-b5a2-1e0dcd2e9c41',	'Analia Eribta Br Tarigan',	'dokter-1702984337091.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7'),
(16,	'0b71978e-61a8-4633-8acf-746114b7f3d5',	'Jennova Adelia Br Milala',	'dokter-1702984367674.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7'),
(17,	'dcfe703c-b34b-4ee3-8743-d5b2626e52db',	'Darianna',	'dokter-1702984740441.png',	'54c67b2d-bc63-4ddb-8e40-a19c3e1675a9'),
(18,	'5b943bb8-7b8f-4eb0-8e4e-b5fbbcabe78b',	'Yulia Sari',	'dokter-1702984760685.png',	'2606bb53-1360-437c-8507-060f55014c44'),
(19,	'43cf184b-c031-4c7c-aca7-c80c96fa5f53',	'Ika Morina',	'dokter-1702984785379.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7'),
(20,	'ec8bb846-8127-41cb-b73c-c98c9bd05df3',	'Dinasti Astari',	'dokter-1702984840286.png',	'54c67b2d-bc63-4ddb-8e40-a19c3e1675a9'),
(21,	'43e89440-5f63-4f7f-bc14-0e3bac3afe64',	'Rosliana',	'dokter-1702984868902.png',	'da10ab14-e902-4bc8-b1bf-0ef77e7eb808'),
(22,	'43f47d32-ae85-4583-99f3-b8bb51a2ec13',	'Desi Florenti',	'dokter-1702984886878.png',	'da10ab14-e902-4bc8-b1bf-0ef77e7eb808'),
(23,	'c9924cd0-7e59-4b2d-a283-24fde2d130b7',	'Rinte',	'dokter-1702984912142.png',	'54c67b2d-bc63-4ddb-8e40-a19c3e1675a9'),
(24,	'e4c10d4b-db3e-4f7b-b0dc-887ad56161be',	'Nurlela',	'dokter-1702984945265.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7'),
(25,	'911ae983-16ae-4782-8f60-b8c2aee3ae59',	'Dinaria',	'dokter-1702984968192.png',	'2606bb53-1360-437c-8507-060f55014c44'),
(26,	'd71792d5-a0cb-498d-9c1c-c83cb4beeb42',	'Serianna',	'dokter-1702985096890.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7'),
(27,	'de1afc02-26c9-439e-8187-96558f508863',	'Asniria',	'dokter-1702985114625.png',	'2606bb53-1360-437c-8507-060f55014c44'),
(28,	'652b829a-dee7-4f0e-b29f-6d22190685ef',	'Aguste Comte Bangun',	'dokter-1702985142933.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7'),
(29,	'10b752b4-e8dd-4b94-b5d1-e5048d689d32',	'Desi Natalia',	'dokter-1702985178054.png',	'54c67b2d-bc63-4ddb-8e40-a19c3e1675a9'),
(30,	'b413c03c-e1e3-4641-becb-81bb017edd2f',	'Linda',	'dokter-1702985198396.png',	'2606bb53-1360-437c-8507-060f55014c44'),
(31,	'e9288b06-ba3d-432f-8529-457b41b90ede',	'Rahmad Antonius',	'dokter-1702985234309.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7'),
(32,	'fe0fd60a-3cba-48ef-844d-9d5a0554dc9e',	'Handre Ahmad Ripaldi',	'dokter-1702985277912.png',	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7');

DROP TABLE IF EXISTS `tb_pasien`;
CREATE TABLE `tb_pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid_user` varchar(255) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `golongan_darah` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_pasien` (`id`, `uuid_user`, `nama_pasien`, `no_hp`, `usia`, `jenis_kelamin`, `alamat`, `golongan_darah`) VALUES
(1,	'5ac94347-eee2-4977-92be-430f07e712eb',	'Widya Khartika',	'08123464',	21,	'P',	'JL Bung',	'O');

DROP TABLE IF EXISTS `tb_poliklinik`;
CREATE TABLE `tb_poliklinik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `nama_poliklinik` varchar(255) NOT NULL,
  `jadwal` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_poliklinik` (`id`, `uuid`, `nama_poliklinik`, `jadwal`) VALUES
(15,	'1f6ed3a9-a8c8-4664-a59e-433d3e4fa3c7',	'Poli Umum',	'[{\"hari\":\"senin\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"13:00\"},{\"hari\":\"selasa\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"14:00\"}]'),
(16,	'2606bb53-1360-437c-8507-060f55014c44',	'Poli KIA',	'[{\"hari\":\"senin\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"},{\"hari\":\"selasa\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"},{\"hari\":\"rabu\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"},{\"hari\":\"kamis\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"}]'),
(17,	'da10ab14-e902-4bc8-b1bf-0ef77e7eb808',	'Fisioterapi',	'[{\"hari\":\"senin\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"},{\"hari\":\"selasa\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"},{\"hari\":\"rabu\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"14:00\"}]'),
(18,	'54c67b2d-bc63-4ddb-8e40-a19c3e1675a9',	'Poli Gigi',	'[{\"hari\":\"senin\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"},{\"hari\":\"selasa\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"},{\"hari\":\"kamis\",\"jam_buka\":\"10:00\",\"jam_tutup\":\"15:00\"}]');

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_user` (`id`, `uuid`, `email`, `password`, `role`) VALUES
(1,	'ea79b96f-237e-49a2-bf4d-8490c3611043',	'rikomalangi@gmail.com',	'$2b$10$OnGaUva2pIki6dIiorgH..7GdHJHSJUAVsyXyRAeLv3jf1uCt2HzS',	'admin'),
(2,	'5ac94347-eee2-4977-92be-430f07e712eb',	'widyakhartika@gmail.com',	'$2b$10$KhPCnDLY1tStuwBf6OLWAeCyjLNpemOjwlO0IhU6MLp2VE8IFay0i',	'pasien');

-- 2023-12-21 14:18:36
