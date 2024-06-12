-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Haz 2024, 02:12:34
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `kütüphane_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depo`
--

CREATE TABLE `depo` (
  `Depo_Id` int(11) NOT NULL,
  `Kitap_ID` int(11) DEFAULT NULL,
  `miktar` int(11) DEFAULT NULL,
  `konum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `depo`
--

INSERT INTO `depo` (`Depo_Id`, `Kitap_ID`, `miktar`, `konum`) VALUES
(1, 1, 20, 'Depo 1'),
(2, 2, 15, 'Depo 1'),
(3, 3, 10, 'Depo 1'),
(4, 4, 12, 'Depo 1'),
(5, 5, 25, 'Depo 1'),
(6, 6, 18, 'Depo 1'),
(7, 7, 30, 'Depo 1'),
(8, 8, 22, 'Depo 1'),
(9, 9, 17, 'Depo 1'),
(10, 10, 24, 'Depo 1'),
(11, 11, 19, 'Depo 1'),
(12, 12, 28, 'Depo 1'),
(13, 13, 26, 'Depo 1'),
(14, 14, 23, 'Depo 1'),
(15, 15, 20, 'Depo 1'),
(16, 16, 15, 'Depo 1'),
(17, 17, 12, 'Depo 1'),
(18, 18, 11, 'Depo 1'),
(19, 19, 10, 'Depo 1'),
(20, 20, 9, 'Depo 1'),
(21, 21, 8, 'Depo 1'),
(22, 22, 7, 'Depo 1'),
(23, 23, 6, 'Depo 1'),
(24, 24, 5, 'Depo 1'),
(25, 25, 4, 'Depo 1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `faturalar`
--

CREATE TABLE `faturalar` (
  `fatura_id` int(11) NOT NULL,
  `tedarikci_id` int(11) DEFAULT NULL,
  `fatura_tarihi` date DEFAULT NULL,
  `tutar` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `faturalar`
--

INSERT INTO `faturalar` (`fatura_id`, `tedarikci_id`, `fatura_tarihi`, `tutar`) VALUES
(1, 1, '2024-01-01', 2500.00),
(2, 2, '2024-01-02', 3200.00),
(3, 3, '2024-01-03', 1800.00),
(4, 4, '2024-01-04', 4000.00),
(5, 5, '2024-01-05', 2900.00),
(6, 6, '2024-01-06', 2100.00),
(7, 7, '2024-01-07', 3500.00),
(8, 8, '2024-01-08', 2600.00),
(9, 9, '2024-01-09', 3900.00),
(10, 10, '2024-01-10', 4200.00),
(11, 11, '2024-01-11', 1800.00),
(12, 12, '2024-01-12', 3100.00),
(13, 13, '2024-01-13', 2400.00),
(14, 14, '2024-01-14', 3700.00),
(15, 15, '2024-01-15', 2800.00),
(16, 16, '2024-01-16', 1900.00),
(17, 17, '2024-01-17', 3300.00),
(18, 18, '2024-01-18', 2600.00),
(19, 19, '2024-01-19', 4000.00),
(20, 20, '2024-01-20', 4300.00),
(21, 21, '2024-01-21', 2200.00),
(22, 22, '2024-01-22', 3600.00),
(23, 23, '2024-01-23', 2700.00),
(24, 24, '2024-01-24', 3800.00),
(25, 25, '2024-01-25', 3000.00);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `katagoriler`
--

CREATE TABLE `katagoriler` (
  `Kategori_Id` int(11) NOT NULL,
  `kategori_adi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `katagoriler`
--

INSERT INTO `katagoriler` (`Kategori_Id`, `kategori_adi`) VALUES
(1, 'Klasikler'),
(2, 'Çocuk'),
(3, 'Fantastik'),
(4, 'Latin Amerika Edebiyatı'),
(5, 'Macera'),
(6, 'Korku'),
(7, 'Tiyatro');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitaplar`
--

CREATE TABLE `kitaplar` (
  `kitap_id` int(11) NOT NULL,
  `kitap_adi` varchar(255) DEFAULT NULL,
  `yayın_yılı` int(11) DEFAULT NULL,
  `yayinevi_Id` int(11) DEFAULT NULL,
  `kategori_Id` int(11) DEFAULT NULL,
  `Yazar_adi` varchar(255) DEFAULT NULL,
  `Yazar_soyadi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kitaplar`
--

INSERT INTO `kitaplar` (`kitap_id`, `kitap_adi`, `yayın_yılı`, `yayinevi_Id`, `kategori_Id`, `Yazar_adi`, `Yazar_soyadi`) VALUES
(1, 'Suç ve Ceza', 1866, 1, 1, 'Fyodor', 'Dostoyevski'),
(2, 'Savaş ve Barış', 1869, 2, 1, 'Lev', 'Tolstoy'),
(3, 'Karamazov Kardeşler', 1880, 1, 1, 'Fyodor', 'Dostoyevski'),
(4, 'Budala', 1869, 1, 1, 'Fyodor', 'Dostoyevski'),
(5, 'Anna Karenina', 1877, 2, 1, 'Lev', 'Tolstoy'),
(6, 'Madame Bovary', 1857, 3, 1, 'Gustave', 'Flaubert'),
(7, 'Monte Kristo Kontu', 1844, 4, 1, 'Alexandre', 'Dumas'),
(8, 'Don Kişot', 1605, 5, 1, 'Miguel', 'de Cervantes'),
(9, 'Büyük Umutlar', 1861, 6, 1, 'Charles', 'Dickens'),
(10, 'Jane Eyre', 1847, 7, 1, 'Charlotte', 'Brontë'),
(11, 'Aşk ve Gurur', 1813, 8, 1, 'Jane', 'Austen'),
(12, 'Küçük Prens', 1943, 9, 2, 'Antoine', 'de Saint-Exupéry'),
(13, 'Yüzüklerin Efendisi', 1954, 10, 3, 'J.R.R.', 'Tolkien'),
(14, 'Harry Potter', 1997, 11, 3, 'J.K.', 'Rowling'),
(15, 'Alacakaranlık', 2005, 12, 3, 'Stephenie', 'Meyer'),
(16, 'Yüzyıllık Yalnızlık', 1967, 13, 4, 'Gabriel', 'Garcia Marquez'),
(17, 'Denizler Altında Yirmi Bin Fersah', 1870, 14, 5, 'Jules', 'Verne'),
(18, 'Robinson Crusoe', 1719, 15, 5, 'Daniel', 'Defoe'),
(19, 'Define Adası', 1883, 16, 5, 'Robert', 'Stevenson'),
(20, 'Frankenstein', 1818, 17, 6, 'Mary', 'Shelley'),
(21, 'Dr. Jekyll ve Mr. Hyde', 1886, 16, 6, 'Robert', 'Stevenson'),
(22, 'Romeo ve Juliet', 1597, 18, 7, 'William', 'Shakespeare'),
(23, 'Hamlet', 1609, 18, 7, 'William', 'Shakespeare'),
(24, 'Othello', 1603, 18, 7, 'William', 'Shakespeare'),
(25, 'Macbeth', 1620, 18, 7, 'William', 'Shakespeare');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap_kopyalari`
--

CREATE TABLE `kitap_kopyalari` (
  `kopya_id` int(11) NOT NULL,
  `kitap_id` int(11) DEFAULT NULL,
  `kopya_numarasi` int(11) DEFAULT NULL,
  `konum` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kitap_kopyalari`
--

INSERT INTO `kitap_kopyalari` (`kopya_id`, `kitap_id`, `kopya_numarasi`, `konum`) VALUES
(1, 1, 1, 'Raf 1'),
(2, 1, 2, 'Raf 1'),
(3, 2, 1, 'Raf 2'),
(4, 2, 2, 'Raf 2'),
(5, 3, 1, 'Raf 3'),
(6, 3, 2, 'Raf 3'),
(7, 4, 1, 'Raf 4'),
(8, 4, 2, 'Raf 4'),
(9, 5, 1, 'Raf 5'),
(10, 5, 2, 'Raf 5'),
(11, 6, 1, 'Raf 6'),
(12, 6, 2, 'Raf 6'),
(13, 7, 1, 'Raf 7'),
(14, 7, 2, 'Raf 7'),
(15, 8, 1, 'Raf 8'),
(16, 8, 2, 'Raf 8'),
(17, 9, 1, 'Raf 9'),
(18, 9, 2, 'Raf 9'),
(19, 10, 1, 'Raf 10'),
(20, 10, 2, 'Raf 10'),
(21, 11, 1, 'Raf 11'),
(22, 11, 2, 'Raf 11'),
(23, 12, 1, 'Raf 12'),
(24, 12, 2, 'Raf 12'),
(25, 13, 1, 'Raf 13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap_satış`
--

CREATE TABLE `kitap_satış` (
  `satılmış_ID` int(11) NOT NULL,
  `kitap_ID` int(11) DEFAULT NULL,
  `satan_personel_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kitap_satış`
--

INSERT INTO `kitap_satış` (`satılmış_ID`, `kitap_ID`, `satan_personel_ID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mevcut_siparişler`
--

CREATE TABLE `mevcut_siparişler` (
  `sipariş_İD` int(11) NOT NULL,
  `kitap_ID` int(11) DEFAULT NULL,
  `sipariş_durumu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `mevcut_siparişler`
--

INSERT INTO `mevcut_siparişler` (`sipariş_İD`, `kitap_ID`, `sipariş_durumu`) VALUES
(1, 1, 'Hazırlanıyor'),
(2, 2, 'Beklemede'),
(3, 3, 'Gönderildi'),
(4, 4, 'Beklemede'),
(5, 5, 'Hazırlanıyor'),
(6, 6, 'Gönderildi'),
(7, 7, 'Hazırlanıyor'),
(8, 8, 'Beklemede'),
(9, 9, 'Hazırlanıyor'),
(10, 10, 'Gönderildi'),
(11, 11, 'Beklemede'),
(12, 12, 'Gönderildi'),
(13, 13, 'Hazırlanıyor'),
(14, 14, 'Beklemede'),
(15, 15, 'Hazırlanıyor'),
(16, 16, 'Gönderildi'),
(17, 17, 'Beklemede'),
(18, 18, 'Hazırlanıyor'),
(19, 19, 'Gönderildi'),
(20, 20, 'Beklemede'),
(21, 21, 'Hazırlanıyor'),
(22, 22, 'Beklemede'),
(23, 23, 'Gönderildi'),
(24, 24, 'Beklemede'),
(25, 25, 'Hazırlanıyor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odünç_verilenler`
--

CREATE TABLE `odünç_verilenler` (
  `Ödünç_Id` int(11) NOT NULL,
  `kitap_Id` int(11) DEFAULT NULL,
  `üye_Id` int(11) DEFAULT NULL,
  `odunç_tarihi` date DEFAULT NULL,
  `İade_Tarihi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `odünç_verilenler`
--

INSERT INTO `odünç_verilenler` (`Ödünç_Id`, `kitap_Id`, `üye_Id`, `odunç_tarihi`, `İade_Tarihi`) VALUES
(1, 1, 1, '2024-01-01', '2024-01-15'),
(2, 2, 2, '2024-01-05', '2024-01-20'),
(3, 3, 3, '2024-01-10', '2024-01-25'),
(4, 4, 4, '2024-01-12', '2024-01-27'),
(5, 5, 5, '2024-01-15', '2024-01-30'),
(6, 6, 6, '2024-01-18', '2024-02-02'),
(7, 7, 7, '2024-01-20', '2024-02-04'),
(8, 8, 8, '2024-01-22', '2024-02-06'),
(9, 9, 9, '2024-01-24', '2024-02-08'),
(10, 10, 10, '2024-01-26', '2024-02-10'),
(11, 11, 11, '2024-01-28', '2024-02-12'),
(12, 12, 12, '2024-01-30', '2024-02-14'),
(13, 13, 13, '2024-02-01', '2024-02-15'),
(14, 14, 14, '2024-02-03', '2024-02-17'),
(15, 15, 15, '2024-02-05', '2024-02-19'),
(16, 16, 16, '2024-02-07', '2024-02-21'),
(17, 17, 17, '2024-02-09', '2024-02-23'),
(18, 18, 18, '2024-02-11', '2024-02-25'),
(19, 19, 19, '2024-02-13', '2024-02-27'),
(20, 20, 20, '2024-02-15', '2024-02-29'),
(21, 21, 21, '2024-02-17', '2024-03-02'),
(22, 22, 22, '2024-02-19', '2024-03-04'),
(23, 23, 23, '2024-02-21', '2024-03-06'),
(24, 24, 24, '2024-02-23', '2024-03-08'),
(25, 25, 25, '2024-02-25', '2024-03-10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

CREATE TABLE `personel` (
  `personel_id` int(11) NOT NULL,
  `ad` varchar(100) DEFAULT NULL,
  `soyad` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefon_no` varchar(15) DEFAULT NULL,
  `pozisyon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`personel_id`, `ad`, `soyad`, `email`, `telefon_no`, `pozisyon`) VALUES
(1, 'Can', 'Öztürk', 'can.ozturk@example.com', '555-3010', 'Kütüphane Müdürü'),
(2, 'Murat', 'Demir', 'murat.demir@example.com', '555-3020', 'Görevli'),
(3, 'Ebru', 'Yıldız', 'ebru.yildiz@example.com', '555-3030', 'Görevli'),
(4, 'Onur', 'Kara', 'onur.kara@example.com', '555-3040', 'Görevli'),
(5, 'Furkan', 'Arslan', 'furkan.arslan@example.com', '555-3050', 'Görevli'),
(6, 'Deniz', 'Kaya', 'deniz.kaya@example.com', '555-3060', 'Görevli'),
(7, 'Serhat', 'Yılmaz', 'serhat.yilmaz@example.com', '555-3070', 'Görevli'),
(8, 'Nehir', 'Aydın', 'nehir.aydin@example.com', '555-3080', 'Görevli'),
(9, 'Gamze', 'Koç', 'gamze.koc@example.com', '555-3090', 'Görevli'),
(10, 'Eren', 'Şahin', 'eren.sahin@example.com', '555-3100', 'Görevli'),
(11, 'Pelin', 'Güneş', 'pelin.gunes@example.com', '555-3110', 'Görevli'),
(12, 'Bora', 'Deniz', 'bora.deniz@example.com', '555-3120', 'Görevli'),
(13, 'Sevil', 'Akın', 'sevil.akin@example.com', '555-3130', 'Görevli'),
(14, 'Cihan', 'Özkan', 'cihan.ozkan@example.com', '555-3140', 'Görevli'),
(15, 'Nihan', 'Tekin', 'nihan.tekin@example.com', '555-3150', 'Görevli'),
(16, 'Burak', 'Yıldırım', 'burak.yildirim@example.com', '555-3160', 'Görevli'),
(17, 'Arda', 'Yılmaz', 'arda.yilmaz@example.com', '555-3170', 'Görevli'),
(18, 'Büşra', 'Çelik', 'busra.celik@example.com', '555-3180', 'Görevli'),
(19, 'Feyza', 'Koç', 'feyza.koc@example.com', '555-3190', 'Görevli'),
(20, 'Ali', 'Yılmaz', 'ali.yilmaz@example.com', '555-3200', 'Görevli'),
(21, 'Derya', 'Deniz', 'derya.deniz@example.com', '555-3210', 'Görevli'),
(22, 'Selin', 'Demir', 'selin.demir@example.com', '555-3220', 'Görevli'),
(23, 'Okan', 'Kaya', 'okan.kaya@example.com', '555-3230', 'Görevli'),
(24, 'Zeynep', 'Aydın', 'zeynep.aydin@example.com', '555-3240', 'Görevli'),
(25, 'Esra', 'Güler', 'esra.guler@example.com', '555-3250', 'Görevli');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyonlar`
--

CREATE TABLE `rezervasyonlar` (
  `rezervasyon_id` int(11) NOT NULL,
  `kitap_id` int(11) DEFAULT NULL,
  `uye_id` int(11) DEFAULT NULL,
  `rezervasyon_tarihi` date DEFAULT NULL,
  `durum` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `rezervasyonlar`
--

INSERT INTO `rezervasyonlar` (`rezervasyon_id`, `kitap_id`, `uye_id`, `rezervasyon_tarihi`, `durum`) VALUES
(1, 1, 1, '2024-01-10', 'Aktif'),
(2, 2, 2, '2024-01-11', 'Aktif'),
(3, 3, 3, '2024-01-12', 'Aktif'),
(4, 4, 4, '2024-01-13', 'Aktif'),
(5, 5, 5, '2024-01-14', 'Aktif'),
(6, 6, 6, '2024-01-15', 'Aktif'),
(7, 7, 7, '2024-01-16', 'Aktif'),
(8, 8, 8, '2024-01-17', 'Aktif'),
(9, 9, 9, '2024-01-18', 'Aktif'),
(10, 10, 10, '2024-01-19', 'Aktif'),
(11, 11, 11, '2024-01-20', 'Aktif'),
(12, 12, 12, '2024-01-21', 'Aktif'),
(13, 13, 13, '2024-01-22', 'Aktif'),
(14, 14, 14, '2024-01-23', 'Aktif'),
(15, 15, 15, '2024-01-24', 'Aktif'),
(16, 16, 16, '2024-01-25', 'Aktif'),
(17, 17, 17, '2024-01-26', 'Aktif'),
(18, 18, 18, '2024-01-27', 'Aktif'),
(19, 19, 19, '2024-01-28', 'Aktif'),
(20, 20, 20, '2024-01-29', 'Aktif'),
(21, 21, 21, '2024-01-30', 'Aktif'),
(22, 22, 22, '2024-01-31', 'Aktif'),
(23, 23, 23, '2024-02-01', 'Aktif'),
(24, 24, 24, '2024-02-02', 'Aktif'),
(25, 25, 25, '2024-02-03', 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tedarikciler`
--

CREATE TABLE `tedarikciler` (
  `tedarikci_id` int(11) NOT NULL,
  `tedarikci_adi` varchar(255) NOT NULL,
  `telefon_no` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `depo_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tedarikciler`
--

INSERT INTO `tedarikciler` (`tedarikci_id`, `tedarikci_adi`, `telefon_no`, `email`, `depo_ID`) VALUES
(1, 'Ahmet Yılmaz', '555-1234', 'ahmet@kitapdunyasi.com', 1),
(2, 'Ayşe Kaya', '555-5678', 'ayse@oku.com', 2),
(3, 'Mehmet Kara', '555-9876', 'mehmet@sayfa.com', 3),
(4, 'Fatma Demir', '555-4321', 'fatma@yayinevi.com', 4),
(5, 'Ali Veli', '555-8765', 'ali@kultur.com', 5),
(6, 'Gülay Yıldız', '555-1357', 'gulay@yazin.com', 6),
(7, 'Cemil Yılmaz', '555-2468', 'cemil@edebiyat.com', 7),
(8, 'Nalan Yılmaz', '555-9753', 'nalan@bilgi.com', 8),
(9, 'Şule Demir', '555-8642', 'sule@sozcuk.com', 9),
(10, 'Ahmet Yıldız', '555-3216', 'ahmet@kalem.com', 10),
(11, 'Fatma Kara', '555-7890', 'fatma@edebiyatcilar.com', 11),
(12, 'Mehmet Veli', '555-6543', 'mehmet@bilge.com', 12),
(13, 'Aliye Yıldız', '555-2468', 'aliye@ilgi.com', 13),
(14, 'Gülay Yıldırım', '555-1357', 'gulay@sozler.com', 14),
(15, 'Cemil Kara', '555-2468', 'cemil@turk.com', 15),
(16, 'Nalan Yıldız', '555-9753', 'nalan@yayincilar.com', 16),
(17, 'Şule Demir', '555-8642', 'sule@edebiyatsever.com', 17),
(18, 'Ahmet Yıldız', '555-3216', 'ahmet@yazar.com', 18),
(19, 'Fatma Kara', '555-7890', 'fatma@bilgic.com', 19),
(20, 'Mehmet Veli', '555-6543', 'mehmet@yazgi.com', 20),
(21, 'Aliye Yıldız', '555-2468', 'aliye@dusler.com', 21),
(22, 'Gülay Yıldırım', '555-1357', 'gulay@duygular.com', 22),
(23, 'Cemil Kara', '555-2468', 'cemil@yol.com', 23),
(24, 'Nalan Yıldız', '555-9753', 'nalan@bilgili.com', 24),
(25, 'Şule Demir', '555-8642', 'sule@soylesi.com', 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayinevi`
--

CREATE TABLE `yayinevi` (
  `Yayınevi_Id` int(11) NOT NULL,
  `Yayınevi_adi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yayinevi`
--

INSERT INTO `yayinevi` (`Yayınevi_Id`, `Yayınevi_adi`) VALUES
(1, 'Can Yayınları'),
(2, 'İletişim Yayınları'),
(3, 'İş Bankası Kültür Yayınları'),
(4, 'Yapı Kredi Yayınları'),
(5, 'Alfa Yayınları'),
(6, 'Everest Yayınları'),
(7, 'Epsilon Yayınları'),
(8, 'Penguin Random House'),
(9, 'Kırmızı Kedi Yayınları'),
(10, 'Metis Yayınları'),
(11, 'Yapı Kredi Yayınları'),
(12, 'Doğan Kitap'),
(13, 'Can Yayınları'),
(14, 'Alfa Yayınları'),
(15, 'İletişim Yayınları'),
(16, 'Everest Yayınları'),
(17, 'İş Bankası Kültür Yayınları'),
(18, 'Yapı Kredi Yayınları');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarlar`
--

CREATE TABLE `yazarlar` (
  `yazar_id` int(11) NOT NULL,
  `ad` varchar(255) DEFAULT NULL,
  `soyad` varchar(255) DEFAULT NULL,
  `dogum_tarihi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yazarlar`
--

INSERT INTO `yazarlar` (`yazar_id`, `ad`, `soyad`, `dogum_tarihi`) VALUES
(1, 'Fyodor', 'Dostoyevski', '1821-11-11'),
(2, 'Lev', 'Tolstoy', '1828-09-09'),
(3, 'Gustave', 'Flaubert', '1821-12-12'),
(4, 'Alexandre', 'Dumas', '1802-07-24'),
(5, 'Miguel', 'de Cervantes', '1547-09-29'),
(6, 'Charles', 'Dickens', '1812-02-07'),
(7, 'Charlotte', 'Brontë', '1816-04-21'),
(8, 'Jane', 'Austen', '1775-12-16'),
(9, 'Antoine', 'de Saint-Exupéry', '1900-06-29'),
(10, 'J.R.R.', 'Tolkien', '1892-01-03'),
(11, 'J.K.', 'Rowling', '1965-07-31'),
(12, 'Stephenie', 'Meyer', '1973-12-24'),
(13, 'Gabriel', 'Garcia Marquez', '1927-03-06'),
(14, 'Jules', 'Verne', '1828-02-08'),
(15, 'Daniel', 'Defoe', '1660-09-13'),
(16, 'Robert', 'Stevenson', '1850-11-13'),
(17, 'Mary', 'Shelley', '1797-08-30'),
(18, 'William', 'Shakespeare', '1564-04-23'),
(19, 'Herman', 'Melville', '1819-08-01'),
(20, 'Mark', 'Twain', '1835-11-30'),
(21, 'Edgar', 'Allan Poe', '1809-01-19'),
(22, 'Franz', 'Kafka', '1883-07-03'),
(23, 'Victor', 'Hugo', '1802-02-26'),
(24, 'George', 'Orwell', '1903-06-25'),
(25, 'Arthur', 'Conan Doyle', '1859-05-22');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `Yorum_Id` int(11) NOT NULL,
  `kitap_id` int(11) DEFAULT NULL,
  `uye_id` int(11) DEFAULT NULL,
  `degerlendirme_tarihi` date DEFAULT NULL,
  `puan` int(11) DEFAULT NULL,
  `yorum` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`Yorum_Id`, `kitap_id`, `uye_id`, `degerlendirme_tarihi`, `puan`, `yorum`) VALUES
(1, 1, 1, '2024-01-10', 5, 'Muhteşem bir eser, Dostoyevski’nin en iyilerinden biri.'),
(2, 2, 2, '2024-01-11', 4, 'Tolstoy’un ustalık eseri, harika bir anlatım.'),
(3, 3, 3, '2024-01-12', 5, 'Karamazov Kardeşler, muhteşem bir felsefi derinlik.'),
(4, 4, 4, '2024-01-13', 4, 'Budala, insan psikolojisine dair derin analizler.'),
(5, 5, 5, '2024-01-14', 5, 'Anna Karenina, aşk ve dramın mükemmel birleşimi.'),
(6, 6, 6, '2024-01-15', 4, 'Madame Bovary, mükemmel bir Fransız klasiği.'),
(7, 7, 7, '2024-01-16', 5, 'Monte Kristo Kontu, harika bir macera.'),
(8, 8, 8, '2024-01-17', 4, 'Don Kişot, zamanının ötesinde bir mizah.'),
(9, 9, 9, '2024-01-18', 5, 'Büyük Umutlar, Dickens’in eşsiz anlatımı.'),
(10, 10, 10, '2024-01-19', 4, 'Jane Eyre, güçlü bir kadın karakterin hikayesi.'),
(11, 11, 11, '2024-01-20', 5, 'Aşk ve Gurur, romantik edebiyatın zirvesi.'),
(12, 12, 12, '2024-01-21', 5, 'Küçük Prens, her yaşa hitap eden bir klasik.'),
(13, 13, 13, '2024-01-22', 5, 'Yüzüklerin Efendisi, fantastik edebiyatın şaheseri.'),
(14, 14, 14, '2024-01-23', 5, 'Harry Potter, büyülü bir dünyada geçen muhteşem bir hikaye.'),
(15, 15, 15, '2024-01-24', 4, 'Alacakaranlık, romantik ve heyecan dolu bir hikaye.'),
(16, 16, 16, '2024-01-25', 5, 'Yüzyıllık Yalnızlık, Marquez’in eşsiz anlatımı.'),
(17, 17, 17, '2024-01-26', 5, 'Denizler Altında Yirmi Bin Fersah, bilim kurgu ve macera dolu bir hikaye.'),
(18, 18, 18, '2024-01-27', 4, 'Robinson Crusoe, bir hayatta kalma klasiği.'),
(19, 19, 19, '2024-01-28', 5, 'Define Adası, çocukluk maceralarının unutulmaz kitabı.'),
(20, 20, 20, '2024-01-29', 5, 'Frankenstein, dehşet ve bilimin çarpışması.'),
(21, 21, 21, '2024-01-30', 5, 'Dr. Jekyll ve Mr. Hyde, insan doğasının karanlık yüzü.'),
(22, 22, 22, '2024-01-31', 4, 'Romeo ve Juliet, trajik bir aşk hikayesi.'),
(23, 23, 23, '2024-02-01', 5, 'Hamlet, Shakespeare’in en derin eserlerinden biri.'),
(24, 24, 24, '2024-02-02', 4, 'Othello, kıskançlığın trajik sonuçları.'),
(25, 25, 25, '2024-02-03', 5, 'Macbeth, güç hırsının trajik hikayesi.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `üyeler`
--

CREATE TABLE `üyeler` (
  `uye_Id` int(11) NOT NULL,
  `ad` varchar(255) DEFAULT NULL,
  `soyad` varchar(255) DEFAULT NULL,
  `dogum_tarihi` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefon_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `üyeler`
--

INSERT INTO `üyeler` (`uye_Id`, `ad`, `soyad`, `dogum_tarihi`, `email`, `telefon_no`) VALUES
(1, 'Ahmet', 'KALKAN', '1985-05-10', 'AHMET.KALKAN@example.com', '555-1111'),
(2, 'Ayşe', 'Kaya', '1990-07-21', 'ayse.kaya@example.com', '555-2222'),
(3, 'Mehmet', 'Demir', '1978-09-12', 'mehmet.demir@example.com', '555-3333'),
(4, 'Elif', 'Çelik', '1992-02-24', 'elif.celik@example.com', '555-4444'),
(5, 'Ali', 'Şahin', '1980-11-15', 'ali.sahin@example.com', '555-5555'),
(6, 'Fatma', 'Kara', '1987-04-07', 'fatma.kara@example.com', '555-6666'),
(7, 'Mustafa', 'Öztürk', '1975-03-19', 'mustafa.ozturk@example.com', '555-7777'),
(8, 'Emine', 'Yıldız', '1989-12-30', 'emine.yildiz@example.com', '555-8888'),
(9, 'Hüseyin', 'Aydın', '1982-06-04', 'huseyin.aydin@example.com', '555-9999'),
(10, 'Zeynep', 'Arslan', '1995-08-16', 'zeynep.arslan@example.com', '555-1010'),
(11, 'Hasan', 'Doğan', '1983-01-25', 'hasan.dogan@example.com', '555-1112'),
(12, 'Sevim', 'Çakır', '1981-03-28', 'sevim.cakir@example.com', '555-1213'),
(13, 'Cem', 'Kaya', '1994-05-09', 'cem.kaya@example.com', '555-1314'),
(14, 'Leyla', 'Demir', '1986-07-22', 'leyla.demir@example.com', '555-1415'),
(15, 'Yusuf', 'Kara', '1991-09-03', 'yusuf.kara@example.com', '555-1516'),
(16, 'Gül', 'Yılmaz', '1988-11-18', 'gul.yilmaz@example.com', '555-1617'),
(17, 'İsmail', 'Koç', '1979-02-07', 'ismail.koc@example.com', '555-1718'),
(18, 'Derya', 'Aydın', '1993-04-26', 'derya.aydin@example.com', '555-1819'),
(19, 'Cenk', 'Gür', '1996-06-14', 'cenk.gur@example.com', '555-1920'),
(20, 'Merve', 'Şen', '1984-08-05', 'merve.sen@example.com', '555-2021'),
(21, 'Eren', 'Acar', '1977-10-12', 'eren.acar@example.com', '555-2122'),
(22, 'Aslı', 'Erkan', '1989-11-24', 'asli.erkan@example.com', '555-2223'),
(23, 'Volkan', 'Tekin', '1985-01-16', 'volkan.tekin@example.com', '555-2324'),
(24, 'Murat', 'Şimşek', '1992-03-28', 'murat.simsek@example.com', '555-2425'),
(25, 'Meltem', 'Yıldırım', '1983-05-09', 'meltem.yildirim@example.com', '555-2526');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `depo`
--
ALTER TABLE `depo`
  ADD PRIMARY KEY (`Depo_Id`),
  ADD KEY `Kitap_ID` (`Kitap_ID`);

--
-- Tablo için indeksler `faturalar`
--
ALTER TABLE `faturalar`
  ADD PRIMARY KEY (`fatura_id`),
  ADD KEY `tedarikci_id` (`tedarikci_id`);

--
-- Tablo için indeksler `katagoriler`
--
ALTER TABLE `katagoriler`
  ADD PRIMARY KEY (`Kategori_Id`);

--
-- Tablo için indeksler `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD PRIMARY KEY (`kitap_id`),
  ADD KEY `yayinevi_Id` (`yayinevi_Id`),
  ADD KEY `kategori_Id` (`kategori_Id`),
  ADD KEY `Yazar_adi` (`Yazar_adi`),
  ADD KEY `Yazar_soyadi` (`Yazar_soyadi`);

--
-- Tablo için indeksler `kitap_kopyalari`
--
ALTER TABLE `kitap_kopyalari`
  ADD PRIMARY KEY (`kopya_id`),
  ADD KEY `kitap_id` (`kitap_id`);

--
-- Tablo için indeksler `kitap_satış`
--
ALTER TABLE `kitap_satış`
  ADD PRIMARY KEY (`satılmış_ID`),
  ADD KEY `kitap_ID` (`kitap_ID`),
  ADD KEY `satan_personel_ID` (`satan_personel_ID`);

--
-- Tablo için indeksler `mevcut_siparişler`
--
ALTER TABLE `mevcut_siparişler`
  ADD PRIMARY KEY (`sipariş_İD`),
  ADD KEY `kitap_ID` (`kitap_ID`);

--
-- Tablo için indeksler `odünç_verilenler`
--
ALTER TABLE `odünç_verilenler`
  ADD PRIMARY KEY (`Ödünç_Id`),
  ADD KEY `kitap_Id` (`kitap_Id`),
  ADD KEY `üye_Id` (`üye_Id`);

--
-- Tablo için indeksler `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`personel_id`);

--
-- Tablo için indeksler `rezervasyonlar`
--
ALTER TABLE `rezervasyonlar`
  ADD PRIMARY KEY (`rezervasyon_id`),
  ADD KEY `kitap_id` (`kitap_id`),
  ADD KEY `uye_id` (`uye_id`);

--
-- Tablo için indeksler `tedarikciler`
--
ALTER TABLE `tedarikciler`
  ADD PRIMARY KEY (`tedarikci_id`),
  ADD KEY `depo_ID` (`depo_ID`);

--
-- Tablo için indeksler `yayinevi`
--
ALTER TABLE `yayinevi`
  ADD PRIMARY KEY (`Yayınevi_Id`);

--
-- Tablo için indeksler `yazarlar`
--
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`yazar_id`),
  ADD UNIQUE KEY `ad` (`ad`),
  ADD UNIQUE KEY `soyad` (`soyad`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`Yorum_Id`),
  ADD KEY `kitap_id` (`kitap_id`),
  ADD KEY `uye_id` (`uye_id`);

--
-- Tablo için indeksler `üyeler`
--
ALTER TABLE `üyeler`
  ADD PRIMARY KEY (`uye_Id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `faturalar`
--
ALTER TABLE `faturalar`
  MODIFY `fatura_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `katagoriler`
--
ALTER TABLE `katagoriler`
  MODIFY `Kategori_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `kitap_satış`
--
ALTER TABLE `kitap_satış`
  MODIFY `satılmış_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `mevcut_siparişler`
--
ALTER TABLE `mevcut_siparişler`
  MODIFY `sipariş_İD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `yayinevi`
--
ALTER TABLE `yayinevi`
  MODIFY `Yayınevi_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `yazarlar`
--
ALTER TABLE `yazarlar`
  MODIFY `yazar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `depo`
--
ALTER TABLE `depo`
  ADD CONSTRAINT `depo_ibfk_1` FOREIGN KEY (`Kitap_ID`) REFERENCES `kitaplar` (`kitap_id`);

--
-- Tablo kısıtlamaları `faturalar`
--
ALTER TABLE `faturalar`
  ADD CONSTRAINT `faturalar_ibfk_1` FOREIGN KEY (`tedarikci_id`) REFERENCES `tedarikciler` (`tedarikci_id`);

--
-- Tablo kısıtlamaları `kitaplar`
--
ALTER TABLE `kitaplar`
  ADD CONSTRAINT `kitaplar_ibfk_1` FOREIGN KEY (`yayinevi_Id`) REFERENCES `yayinevi` (`Yayınevi_Id`),
  ADD CONSTRAINT `kitaplar_ibfk_2` FOREIGN KEY (`kategori_Id`) REFERENCES `katagoriler` (`Kategori_Id`),
  ADD CONSTRAINT `kitaplar_ibfk_3` FOREIGN KEY (`Yazar_adi`) REFERENCES `yazarlar` (`ad`),
  ADD CONSTRAINT `kitaplar_ibfk_4` FOREIGN KEY (`Yazar_soyadi`) REFERENCES `yazarlar` (`soyad`);

--
-- Tablo kısıtlamaları `kitap_kopyalari`
--
ALTER TABLE `kitap_kopyalari`
  ADD CONSTRAINT `kitap_kopyalari_ibfk_1` FOREIGN KEY (`kitap_id`) REFERENCES `kitaplar` (`kitap_id`);

--
-- Tablo kısıtlamaları `kitap_satış`
--
ALTER TABLE `kitap_satış`
  ADD CONSTRAINT `kitap_satış_ibfk_1` FOREIGN KEY (`kitap_ID`) REFERENCES `kitaplar` (`kitap_id`),
  ADD CONSTRAINT `kitap_satış_ibfk_2` FOREIGN KEY (`satan_personel_ID`) REFERENCES `personel` (`personel_id`);

--
-- Tablo kısıtlamaları `mevcut_siparişler`
--
ALTER TABLE `mevcut_siparişler`
  ADD CONSTRAINT `mevcut_siparişler_ibfk_1` FOREIGN KEY (`kitap_ID`) REFERENCES `kitaplar` (`kitap_id`);

--
-- Tablo kısıtlamaları `odünç_verilenler`
--
ALTER TABLE `odünç_verilenler`
  ADD CONSTRAINT `odünç_verilenler_ibfk_1` FOREIGN KEY (`kitap_Id`) REFERENCES `kitaplar` (`kitap_id`),
  ADD CONSTRAINT `odünç_verilenler_ibfk_2` FOREIGN KEY (`üye_Id`) REFERENCES `üyeler` (`uye_Id`);

--
-- Tablo kısıtlamaları `rezervasyonlar`
--
ALTER TABLE `rezervasyonlar`
  ADD CONSTRAINT `rezervasyonlar_ibfk_1` FOREIGN KEY (`kitap_id`) REFERENCES `kitaplar` (`kitap_id`),
  ADD CONSTRAINT `rezervasyonlar_ibfk_2` FOREIGN KEY (`uye_id`) REFERENCES `üyeler` (`uye_Id`);

--
-- Tablo kısıtlamaları `tedarikciler`
--
ALTER TABLE `tedarikciler`
  ADD CONSTRAINT `tedarikciler_ibfk_1` FOREIGN KEY (`depo_ID`) REFERENCES `depo` (`Depo_Id`);

--
-- Tablo kısıtlamaları `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD CONSTRAINT `yorumlar_ibfk_1` FOREIGN KEY (`kitap_id`) REFERENCES `kitaplar` (`kitap_id`),
  ADD CONSTRAINT `yorumlar_ibfk_2` FOREIGN KEY (`uye_id`) REFERENCES `üyeler` (`uye_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
