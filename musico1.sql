-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 03:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musico1`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_konser`
--

CREATE TABLE `daftar_konser` (
  `id_rincian_tiket` int(11) NOT NULL,
  `nama_konser` varchar(255) NOT NULL,
  `tanggal_konser` date NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `lokasi_konser` varchar(255) NOT NULL,
  `poster_kecil` varchar(255) NOT NULL,
  `jenis_konser` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_berakhir` time NOT NULL,
  `deskripsi` text NOT NULL,
  `posterStage` varchar(255) NOT NULL,
  `posterBesar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_konser`
--

INSERT INTO `daftar_konser` (`id_rincian_tiket`, `nama_konser`, `tanggal_konser`, `harga_tiket`, `lokasi_konser`, `poster_kecil`, `jenis_konser`, `penyelenggara`, `waktu_mulai`, `waktu_berakhir`, `deskripsi`, `posterStage`, `posterBesar`) VALUES
(1, 'Anak JakSel: The Musical!', '2024-03-09', 125000, 'Ged. Kesenian Jakarta, Jakarta', 'gambar/KAJ.jpg', 'Musical', 'Boss Creator', '15:30:00', '20:30:00', 'BARANG-BARANG TERLARANG: \r\n\r\n1. Makanan dan minuman dari luar.\r\n2. Peralatan fotografi dan videografi profesional.\r\n3. Payung.\r\n4. Narkoba, obat-obatan terlarang, dan benda-benda ilegal lainnya.\r\n5. Rollerblade, sepeda, dan kendaraan personal lainnya.\r\n6. Senjata, benda tajam, dan/atau benda mudah terbakar/meledak.\r\n7. Benda-benda yang memiliki potensi bahaya dan beracun.\r\n\r\nBARANG-BARANG YANG DIPERBOLEHKAN\r\n\r\n1. Rokok (hanya diperbolehkan di area yang disediakan).\r\n2. Rokok elektrik dan vape (hanya diperbolehkan di area yang disediakan).\r\n3. Botol parfum, air minum, dan tumbler.\r\n4. Kamera non-profesional.\r\n\r\nDengan membeli tiket ini, berarti Anda mengerti dan menyetujui syarat & ketentuan acara dan bersedia mematuhi protokol kesehatan dan keselamatan yang berlaku pada saat acara, yang telah ditentukan oleh penyelenggara.', 'gambar/StageJakSel.jpeg', 'gambar/konserJakSel.jpg'),
(2, 'The Hold On Tight Tour', '2024-06-25', 800000, 'Aruba Hall, DKI Jakarta', 'gambar/grupBand1.jpg', 'Grup Band', 'Inside Indo', '19:00:00', '22:00:00', 'Please Note!\r\n\r\nThe concert is standing for all ticket categories, no seats available.\r\nTicket price excludes Government Tax 10%, admin fee 5%, and convenience fee.\r\nLocations indicated are for visual purposes only; actual location/size may differ slightly.\r\nSyarat dan Ketentuan\r\n\r\nKetentuan Umum\r\n\r\nTiket hanya dapat dibeli melalui Loket.com, tiket hanya dapat digunakan untuk masuk ke acara konser The Hold On Tight Tour.\r\nHarga Tiket tidak termasuk pajak 10%, biaya admin 5%, dan biaya lainnya.\r\nPastikan Anda melakukan pembelian tiket dengan menggunakan data Anda yang sah dan benar (Kartu Identitas/Kartu Pelajar/KTP/KK/SIM/Paspor). Tiket Anda tidak dapat diubah dan/atau dimodifikasi setelah pembelian sudah dilakukan.\r\nTiket yang sudah dibeli tidak dapat ditukar, diuangkan, ataupun dikembalikan.\r\nSetelah berhasil melakukan pembelian tiket, e-ticket akan dikirimkan ke email, yang nantinya akan ditukarkan dengan gelang tiket.\r\nDimohon untuk membawa KTP/KK/Passport/SIM/Kartu Pelajar asli sesuai dengan data yang tertera di e-ticket pada saat penukaran gelang tiket.\r\nDetail waktu dan tempat penukaran gelang tiket akan diinformasikan melalui media sosial Inside Indo (@insideindo.co.id).\r\nTidak ada gelang tiket pengganti yang akan dikeluarkan dalam kondisi apa pun jika hilang & rusak karena alasan apa pun. Penyelenggara tidak bertanggung jawab atas gelang tiket yang hilang, dicuri, atau rusak.\r\nHanya pemilik gelang tiket yang valid yang dapat masuk ke dalam tempat pertunjukan. Apabila tiket dipindahtangankan, penerima tiket wajib membawa copy identitas pembeli tiket.\r\nBerhati-hatilah menggunakan e-ticket Anda, karena unique barcode hanya dapat discan sebanyak satu kali. Setelah Anda memperoleh gelang tiket dan masuk ke area acara, Anda tidak akan diperbolehkan untuk keluar area dan masuk kembali (no re-entry).\r\nPenyelenggara berhak untuk menolak masuk dan/atau mengeluarkan orang-orang yang tidak mentaati syarat dan ketentuan acara.\r\nPenyelenggara memiliki hak untuk mengubah ataupun menambahkan syarat-syarat di syarat & ketentuan tanpa pemberitahuan lebih dahulu.\r\nSeluruh pemegang tiket tidak diperkenankan untuk merokok (termasuk rokok elektrik) di area konser.\r\nKetentuan Acara\r\n\r\nBagi pemegang tiket VIP, Meet and Greet dan foto grup akan dilaksanakan pada pukul 17:00 WIB.\r\nBagi pemegang tiket CAT 1 akan masuk venue lebih awal yaitu pada pukul 17:30 WIB dan foto grup akan dilakukan pada pukul 18:15 WIB.\r\nBagi pemegang tiket CAT 2 akan diperbolehkan masuk venue pada pukul 18:30 WIB.\r\nPintu akan dibuka pada pukul 18:30 WIB dan acara akan dimulai pada pukul 19:00 WIB.\r\nSemua pembeli tiket akan berdiri dan tidak disediakan kursi selama acara berlangsung.\r\nBagi Anda yang datang lebih awal, Anda akan memiliki kesempatan untuk mendapatkan tempat yang diinginkan atau paling nyaman sesuai dengan preferensi (first come first serve).\r\nBarang-barang yang tidak diperbolehkan untuk dibawa\r\n\r\nKamera profesional\r\nSemua jenis senjata dan benda berbahaya, serta benda-benda yang dilarang berdasarkan ketentuan perundangan yang berlaku.\r\nMinuman beralkohol, obat-obatan terlarang, narkoba, psikotropika, atau barang-barang yang mengandung zat berbahaya lainnya.\r\nLaser\r\nDrone\r\nMakanan & minuman dari luar venue\r\nTerompet\r\nBenda atau cairan yang mudah terbakar\r\nAlat perekam video profesional\r\nBotol kaca, yang meliputi botol minum, botol parfum, dan lainnya yang sejenis.', 'gambar/stageHoldOn.jpg', 'gambar/GrupBandDetail.jpg'),
(3, 'COLDPLAY ZURICH', '2024-03-21', 800000, 'Jakarta, Indonesia', 'gambar/CP_GrupBand.jpeg', 'Grup Band', 'Boss Creator', '15:30:00', '20:30:00', 'Ikutin serunya \"Anak Jaksel: The Musical!\" dalam 120 menit roller coaster nostalgia dibumbui komedi, persahabatan, romansa, kritik sosial dan penampilan spesial oleh Ten2Five hanya di Gedung Kesenian Jakarta, 9 Maret 2024 mendatang!\r\nSyarat dan Ketentuan\r\nPeraturan dan Regulasi Tiket:\r\nTiket hanya dapat dibeli melalui website resmi loket.com. Tiket yang diperoleh dari sumber yang tidak resmi, mungkin palsu dan tidak berlaku. Pihak penyelenggara tidak bertanggung jawab atas segala bentuk penipuan tiket yang dibeli melalui pihak lain.\r\nTiket yang sudah dibeli atau ditukar tidak dapat dikembalikan.\r\nTiket dapat dipindahtangankan dengan syarat:\r\nMembawa fotocopy KTP fisik/Digital pembeli tiket.\r\nTiket tidak boleh dijual, dialihkan atau digunakan untuk segala bentuk tujuan komersial atau perdagangan, termasuk namun tidak terbatas pada promosi, kontes, tujuan komersial atau periklanan, perumahan, hotel, persewaan liburan, undian, hadiah amal, atau kegiatan lain tanpa persetujuan tertulis sebelumnya dari penyelenggara. Kegiatan sponsorship, pemasaran ditempat, pemberian sampel, penjual otomatis, pembagian kupon/produk, atau aktivitas promosi lainnya tidak boleh dilakukan di acara (termasuk di tempat parkir), tanpa persetujuan tertulis sebelumnya dari penyelenggara dalam setiap kegiatan. Setiap tiket yang digunakan yang melanggar ketentuan ini akan dicabut dan tidak berlaku, dan pembawanya dianggap sebagai pelanggar acara. Penjualan kembali atau upaya penjualan kembali tiket dapat menjadi alasan untuk penghentian lisensi dan pembatalan tiket.\r\nPembeli tiket Anak Jaksel: The Musical! akan menerima tiket elektronik, dalam tiket elektronik akan tercantum nomor tempat duduk Anda. Harap membawa tiket elektronik saat penukaran tiket fisik. Cukup berupa softcopy, tidak perlu dicetak kertas. Anak-anak di bawah usia 10 tahun tidak diperkenankan untuk menonton pertunjukan Anak Jaksel: The Musical!.\r\nBarcode akan dipindai oleh petugas pada saat memasuki area Gedung Kesenian Jakarta. Pengunjung akan mendapatkan tiket fisik. Tiket fisik diWAJIBKAN untuk diperlihatkan kepada panitia saat memasuki ruangan teater Gedung Kesenian Jakarta.\r\nPenonton dapat memasuki area melalui pintu yang disediakan.\r\nPembelian tiket maksimal sejumlah 4 (empat) tiket per-transaksi.\r\n1 (satu) tiket hanya valid untuk 1 (satu) orang dan 1 (satu) kali masuk dan sesuai dengan jam pertunjukan dan kategori tiket yang dibeli.\r\nDengan membeli tiket, Anda menyetujui semua ketentuan dan terikat secara hukum untuk mematuhi ketentuan ini. Penyelenggara berhak, atas kebijakannya sendiri, untuk mengubah, memodifikasi, menambah atau menghapus bagian dari ketentuan ini setiap saat. Silahkan melakukan pemeriksaan secara berkala untuk perubahan ketentuan.\r\nPembeli tiket memberikan hak kepada penyelenggara (dan yang ditunjuknya) untuk memasukan gambar, rupa, tindakan dan pernyataan Anda dalam audio, video, film, webcast, streaming atau transmisi, pameran, siaran simulcast atau reproduksi lainnya yang dibuat secara langsung atau direkam, atau di acara dalam media atau konteks apa pun untuk tujuan apa pun, termasuk tujuan komersial atau promosi tanpa izin lebih lanjut atau sebaliknya serta bahwa Anda tidak berhak atas pembayaran, kompensasi, atau kredit dalam bentuk apapun terkait hal tersebut.\r\nJika terjadi pembatalan acara, maka uang tiket akan dikembalikan sesuai dengan ketentuan penyelenggara. Biaya administrasi tiket, convenient fee pembayaran dengan kartu kredit, virtual account atau biaya pribadi lainnya (contoh biaya perjalanan, biaya akomodasi, dil.) tidak akan dikembalikan.\r\nWaktu pertunjukan dan cast dapat berubah tanpa pemberitahuan sebelumnya. Tidak ada pengembalian uang yang akan diberikan jika terjadi perubahan tersebut.\r\nSeating arrangement akan dipilih oleh system sesuai dengan best seating. nomor seating tidak berurutan melainkan ganjil 1-3-5-7 atau genap 2-4-6-8.\r\nBarang-barang Terlarang:\r\nMakanan dan minuman dari luar.\r\nPeralatan fotografi dan videografi professional.\r\nPayung.\r\nNark0ba, obat-obat terlarang dan bendaâ€“benda ilegal lainnya.\r\nRollerblade, sepeda, dan kendaraan personal lainnya.\r\nSenjata, benda tajam dan/atau benda mudah terbakar/meledak.\r\nBenda-benda yang memiliki potensi bahaya dan beracun.\r\nBarang-barang yang diperbolehkan:\r\nRokok. (Hanya diperbolehkan di area yang disediakan)\r\nRokok elektrik dan vape. (Hanya diperbolehkan di area yang disediakan)\r\nBotol parfum, air minum, dan tumbler diperbolehkan.\r\nKamera non professional.\r\nDENGAN MEMBELI TIKET INI, BERARTI ANDA MENGERTI DAN MENYETUJUI SYARAT & KETENTUAN ACARA DAN BERSEDIA MEMATUHI PROTOKOL KESEHATAN DAN KESELAMATAN YANG BERLAKU PADA SAAT ACARA, YANG TELAH DITENTUKAN OLEH PENYELENGGARA', 'gambar/StageJakSel.jpeg', 'gambar/CP_GrupBand.jpeg'),
(5, 'Voittaa #9', '2024-06-25', 75000, 'Taman Budaya, DIY', 'gambar/CaCho_Poster.png', 'Paduan Suara', 'Cantabile Choralle', '18:00:00', '22:00:00', 'Peraturan Konser\r\n1. Dilarang membawa senjata dan benda tajam\r\n2. Dilarang makan dan minum di dalam venue\r\n3. Merekam diperbolehkan sewajarnya\r\n4. Dilarang bersuara atau membuat keributan saat pertunjukan berlangsung\r\n5. Apresiasi diperbolehkan setelah lagu selesai dinyanyikan\r\n6. Dilarang buang sampah sembarangan\r\n7. Pastikan handphone dalam keadaan silent atau tidak bersuara\r\n8. Dilarang keluar masauk venue saat pertunjukan berlangsung', 'gambar/CaCho_Stage.jpeg', 'gambar/Voittaa_Poster.jpg'),
(6, 'Remember November', '2024-08-03', 75000, 'Gambir Expo, Jakarta', 'gambar/RememberNovember.png', 'Grup Band', 'Nada Emas Gemilang and Montiz Cipta Gemilang', '13:00:00', '22:00:00', 'Akan ada berbagai penampilan dari berbagai grup band pada konser ini', 'gambar/CaCho_Stage.jpeg', 'gambar/rememberPoster1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_login`
--

CREATE TABLE `data_login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_login`
--

INSERT INTO `data_login` (`id_login`, `username`, `password`) VALUES
(1, 'acell', 'acell'),
(2, 'rizky', 'rizky'),
(3, 'aldy', 'aldy');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_tiket`
--

CREATE TABLE `pembelian_tiket` (
  `id_pembelian` int(11) NOT NULL,
  `nama_pemesanan` varchar(255) NOT NULL,
  `nomor_hp` varchar(20) NOT NULL,
  `email_pemesanan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `id_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian_tiket`
--

INSERT INTO `pembelian_tiket` (`id_pembelian`, `nama_pemesanan`, `nomor_hp`, `email_pemesanan`, `jumlah`, `tanggal_pembelian`, `id_tiket`) VALUES
(2, 'marecell', '081234567890', 'marcell@gmail.com', 1, '0000-00-00', 5),
(3, 'marcell', '081245678988', 'marcell@gmail.com', 5, '0000-00-00', 5),
(4, 'marcell', '081245678988', 'marcell@gmail.com', 5, '0000-00-00', 5),
(5, 'aa', '0812151155', 'aa@gmail.com', 1, '0000-00-00', 5),
(6, 'a', '0220', 'a@gmailm.com', 1, '0000-00-00', 5),
(7, 'aa', '0560', 'aa@mm.com', 2, '0000-00-00', 2),
(8, 'aa', '02151515515', 'aa@mam.com', 1, '0000-00-00', 5),
(9, 'aa', '02151515515', 'aa@mam.com', 1, '0000-00-00', 5),
(10, 'aa', '02151515515', 'aa@mam.com', 1, '0000-00-00', 5),
(11, 'aa', '111', 'aa@bb.com', 3, '0000-00-00', 5),
(12, 'aa', '11', 'aa@gmail.com', 1, '0000-00-00', 5),
(13, 'aa', '123', 'a@g.com', 1, '0000-00-00', 2),
(14, 'aa', '123', 'a@g.com', 1, '0000-00-00', 2);

--
-- Triggers `pembelian_tiket`
--
DELIMITER $$
CREATE TRIGGER `kurang_tiket` AFTER INSERT ON `pembelian_tiket` FOR EACH ROW BEGIN
	update tiket set stok = stok-new.jumlah
    where id_tiket = new.id_tiket;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_tiket_konser`
--

CREATE TABLE `pembelian_tiket_konser` (
  `id_pembelian` int(11) NOT NULL,
  `id_tiket` int(11) DEFAULT NULL,
  `nama_pemesanan` varchar(255) DEFAULT NULL,
  `nomor_hp` varchar(15) DEFAULT NULL,
  `email_pemesanan` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal_pembelian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian_tiket_konser`
--

INSERT INTO `pembelian_tiket_konser` (`id_pembelian`, `id_tiket`, `nama_pemesanan`, `nomor_hp`, `email_pemesanan`, `jumlah`, `tanggal_pembelian`) VALUES
(1, 2, 'aa', '11', 'aa@g.com', 1, '0000-00-00'),
(2, NULL, 'aa', '123', 'aa@g.com', 1, '0000-00-00'),
(3, NULL, 'aa', '123', 'aa@g.com', 1, '0000-00-00'),
(6, 5, 'ma', '123', 'aa.@gmail.com', 1, '0000-00-00'),
(7, 5, 'aa', '22', 'aa@gg.com', 1, '0000-00-00'),
(10, 5, 'aa', '22', 'aa@gg.com', 1, '0000-00-00'),
(11, 5, 'aa', '22', 'aa@gg.com', 1, '0000-00-00'),
(12, 5, 'aa', '22', 'aa@gg.com', 1, '0000-00-00'),
(13, 5, 'aa', '22', 'aa@gg.com', 1, '0000-00-00'),
(14, 5, 'Marcell', '081245678931', 'marcell@gmail.com', 1, '0000-00-00'),
(15, 5, 'Marcell', '081245678931', 'marcell@gmail.com', 1, '0000-00-00'),
(16, 6, 'aa', '081221515', 'aa@gmail.com', 1, '0000-00-00'),
(17, NULL, 'aa', '081221515', 'aa@gmail.com', 1, '0000-00-00'),
(18, NULL, 'aa', '081221515', 'aa@gmail.com', 1, '0000-00-00'),
(19, 1, 'aa', '081221515', 'aa@gmail.com', 1, '0000-00-00'),
(20, NULL, 'aa', '123', 'aa@gmail.com', 1, '0000-00-00'),
(21, 2, 'aa', '123', 'aa@gmail.com', 1, '0000-00-00');

--
-- Triggers `pembelian_tiket_konser`
--
DELIMITER $$
CREATE TRIGGER `pengurangan_stok` AFTER INSERT ON `pembelian_tiket_konser` FOR EACH ROW BEGIN
	update tiket set stok = stok-new.jumlah
    where id_tiket = new.id_tiket;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `id_rincian_tiket` int(11) DEFAULT NULL,
  `nama_tiket` varchar(255) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_rincian_tiket`, `nama_tiket`, `harga`, `stok`, `keterangan`, `jenis`) VALUES
(1, 1, 'Early Bird Antasari (CAT A) - SHOW 1', 225000, 199, 'Harga Belum termasuk pajak', 'SHOW 1'),
(2, 1, 'Early Bird Antasari (CAT B) - SHOW 1', 175000, 194, 'Harga Belum termasuk pajak', 'SHOW 1'),
(3, 1, 'Early Bird Antasari (CAT C) - SHOW 1', 125000, 200, 'Harga Belum termasuk pajak', 'SHOW 1'),
(4, 1, 'Early Bird Antasari (CAT A) - SHOW 2', 225000, 200, 'Harga Belum termasuk pajak', 'SHOW 2'),
(5, 1, 'Early Bird Antasari (CAT B) - SHOW 2', 175000, 184, 'Harga Belum termasuk pajak', 'SHOW 2'),
(6, 1, 'Early Bird Antasari (CAT C) - SHOW 2', 125000, 199, 'Harga Belum termasuk pajak', 'SHOW 2'),
(7, 2, 'Meet and Greet', 1250000, 0, 'for Meet and greet', 'VIP STANDING'),
(8, 2, 'Photo Group', 800000, 0, 'for Photo Group', 'CAT 1'),
(9, 2, 'Meet and Greet', 1250000, 200, 'for Meet and Greet', 'VIP STANDING'),
(10, 5, 'Undangan Spesial', 75000, 50, 'Untuk Tamu terhormat', 'VIP'),
(11, 5, 'Reguler', 50000, 145, 'Untuk tamu biasa', 'Reguler'),
(12, 6, 'Regulvember', 75000, 100, 'Untuk Reguler Person', 'Reguler'),
(13, 6, 'VImber', 150000, 150, 'Untuk VIP', 'VIP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_konser`
--
ALTER TABLE `daftar_konser`
  ADD PRIMARY KEY (`id_rincian_tiket`);

--
-- Indexes for table `data_login`
--
ALTER TABLE `data_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `pembelian_tiket`
--
ALTER TABLE `pembelian_tiket`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_tiket` (`id_tiket`);

--
-- Indexes for table `pembelian_tiket_konser`
--
ALTER TABLE `pembelian_tiket_konser`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_tiket` (`id_tiket`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `id_rincian_tiket` (`id_rincian_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_konser`
--
ALTER TABLE `daftar_konser`
  MODIFY `id_rincian_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_login`
--
ALTER TABLE `data_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembelian_tiket`
--
ALTER TABLE `pembelian_tiket`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pembelian_tiket_konser`
--
ALTER TABLE `pembelian_tiket_konser`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian_tiket`
--
ALTER TABLE `pembelian_tiket`
  ADD CONSTRAINT `pembelian_tiket_ibfk_1` FOREIGN KEY (`id_tiket`) REFERENCES `daftar_konser` (`id_rincian_tiket`);

--
-- Constraints for table `pembelian_tiket_konser`
--
ALTER TABLE `pembelian_tiket_konser`
  ADD CONSTRAINT `pembelian_tiket_konser_ibfk_1` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`);

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`id_rincian_tiket`) REFERENCES `daftar_konser` (`id_rincian_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
