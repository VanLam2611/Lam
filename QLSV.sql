CREATE DATABASE QLSINHVIEN
GO
--SU DUNG DU LIEU
USE QLSINHVIEN
GO
--TAO BANG
--KHOA
CREATE TABLE KHOA
(
	MAKHOA CHAR(4) CONSTRAINT PK_MAKHOA PRIMARY KEY,
	TENKHOA CHAR(30) NOT NULL,
	NAMTL INT NOT NULL,
)
GO
--MON HOC
CREATE TABLE MHOC
(
	TENMH NVARCHAR(30) NOT NULL,
	MAMH CHAR(8) CONSTRAINT PK_MAMH PRIMARY KEY,
	TINCHI INT,
	MAKH NCHAR(4) NOT NULL
)
GO
--SINH VIEN
CREATE TABLE SVIEN
(
	TEN NVARCHAR(30) NOT NULL,
	MASV INT CONSTRAINT PK_MASV PRIMARY KEY,
	NAM INT NOT NULL,
	MAKH NCHAR(4) NOT NULL,
)

GO
--HOC PHAN
CREATE TABLE HPHAN
(
	MAHP INT CONSTRAINT PK_MAHP PRIMARY KEY,
	MAMH CHAR(8) NOT NULL,
	HOCKY INT NOT NULL,
	NAM INT NOT NULL,
	GV NVARCHAR(30) NOT NULL,
)
GO
--DIEU KIEN
CREATE TABLE DKIEN
(
	MAHP INT NOT NULL,
	MAMH_TRUOC CHAR(8) NOT NULL,
)
GO
--KET QUA
CREATE TABLE KQUA
(
	MASV INT NOT NULL,
	MAHP INT NOT NULL,
	DIEM FLOAT
)
GO
--TAO KHOA NGOAI SINH VIEN
ALTER TABLE SVIEN ADD CONSTRAINT FK_MAKH FOREIGN KEY(MAKH) REFERENCES MHOC(MAKH)
