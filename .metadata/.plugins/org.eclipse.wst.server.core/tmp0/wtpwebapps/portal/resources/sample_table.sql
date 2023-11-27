-- --------------------------------------------------------
-- �샇�뒪�듃:                          localhost
-- �꽌踰� 踰꾩쟾:                        10.5.10-MariaDB - mariadb.org binary distribution
-- �꽌踰� OS:                        Win64
-- HeidiSQL 踰꾩쟾:                  11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- test �뜲�씠�꽣踰좎씠�뒪 援ъ“ �궡蹂대궡湲�
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- �뀒�씠釉� test.tbl_attachfile 援ъ“ �궡蹂대궡湲�
DROP TABLE IF EXISTS `tbl_attachfile`;
CREATE TABLE IF NOT EXISTS `tbl_attachfile` (
  `uuid` varchar(50) CHARACTER SET utf8 NOT NULL,
  `bno` bigint(20) NOT NULL DEFAULT 0,
  `originfilename` varchar(200) CHARACTER SET utf8 NOT NULL,
  `realfilename` varchar(200) CHARACTER SET utf8 NOT NULL,
  `fileext` varchar(20) CHARACTER SET utf8 NOT NULL,
  `filesize` bigint(20) NOT NULL DEFAULT 0,
  `savepath` varchar(300) CHARACTER SET utf8 NOT NULL,
  `credate` datetime NOT NULL DEFAULT current_timestamp(),
  `upddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`uuid`),
  KEY `INDEX1` (`bno`),
  CONSTRAINT `FK_tbl_attachfile_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- �궡蹂대궪 �뜲�씠�꽣媛� �꽑�깮�릺�뼱 �엳吏� �븡�뒿�땲�떎.

-- �뀒�씠釉� test.tbl_board 援ъ“ �궡蹂대궡湲�
DROP TABLE IF EXISTS `tbl_board`;
CREATE TABLE IF NOT EXISTS `tbl_board` (
  `bno` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `writer` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `regdate` datetime NOT NULL DEFAULT current_timestamp(),
  `upddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- �궡蹂대궪 �뜲�씠�꽣媛� �꽑�깮�릺�뼱 �엳吏� �븡�뒿�땲�떎.

-- �뀒�씠釉� test.tbl_member 援ъ“ �궡蹂대궡湲�
DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `userseq` int(11) NOT NULL AUTO_INCREMENT,
  `dbsts` varchar(50) NOT NULL DEFAULT 'A',
  `userid` varchar(50) NOT NULL,
  `userpw` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `enabled` char(1) NOT NULL,
  `credate` datetime NOT NULL DEFAULT current_timestamp(),
  `upddate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`userseq`),
  UNIQUE KEY `INDEX_UK1` (`userid`,`dbsts`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- �궡蹂대궪 �뜲�씠�꽣媛� �꽑�깮�릺�뼱 �엳吏� �븡�뒿�땲�떎.

-- �뀒�씠釉� test.tbl_member_auth 援ъ“ �궡蹂대궡湲�
DROP TABLE IF EXISTS `tbl_member_auth`;
CREATE TABLE IF NOT EXISTS `tbl_member_auth` (
  `userseq` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `auth` varchar(50) NOT NULL,
  `credate` datetime NOT NULL DEFAULT current_timestamp(),
  `upddate` datetime NOT NULL DEFAULT current_timestamp(),
  KEY `FK__tbl_member` (`userseq`),
  CONSTRAINT `FK__tbl_member` FOREIGN KEY (`userseq`) REFERENCES `tbl_member` (`userseq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- �궡蹂대궪 �뜲�씠�꽣媛� �꽑�깮�릺�뼱 �엳吏� �븡�뒿�땲�떎.

-- �뀒�씠釉� test.tbl_sampletx 援ъ“ �궡蹂대궡湲�
DROP TABLE IF EXISTS `tbl_sampletx`;
CREATE TABLE IF NOT EXISTS `tbl_sampletx` (
  `col1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- �궡蹂대궪 �뜲�씠�꽣媛� �꽑�깮�릺�뼱 �엳吏� �븡�뒿�땲�떎.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
