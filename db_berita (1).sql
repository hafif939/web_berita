-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 05:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id`, `judul`, `isi`, `penulis`, `keyword`, `gambar`) VALUES
(8, 'Indonesia Uji Coba Bensin dari Kelapa Sawit', 'Rabu, 26 Jan 2022 13:48 WIB\r\n\r\nJakarta - Indonesia terus menguji coba bahan bakar (BBM) berkelanjutan yang menggunakan bahan terbarukan. Kini, Indonesia tengah menguji coba bahan bakar bensin dari kelapa sawit.\r\nPemerintah bekerja sama dengan Institut Teknologi Bandung (ITB) melakukan uji coba pembuatan bensin dengan minyak sawit industri (Bensa) skala demo plant. Bensa berkualitas tinggi ini akan menjadi parameter untuk penyusunan Feasibility Study (FS) dan Detail Engineering Design (DED) untuk produksi Bensa yang direncanakan berkapasitas 238,5 kilo liter (kl) per hari yang akan dibangun di Kabupaten Musi Banyuasin, Provinsi Sumatera Selatan dan Kabupaten Pelalawan, Provinsi Riau.\r\n\r\n\"Hari ini saya berkesempatan melihat langsung proses dari crude palm oil (CPO) ke bensin, ide ini sudah lama diinisiasi oleh Institut Teknologi Bandung, Profesor Subagjo dan teman-teman, dan kemudian dua tahun yang lalu kita dorong supaya bisa di-scale up dari hasil skala laboratoriumnya, ujar Menteri Energi dan Sumber Daya Mineral (ESDM) Arifin Tasrif, dalam keterangan tertulisnya.\r\n\r\n                                                ', 'tim sasaknews.com', 'news', 'indonesia-kembangkan-bensin-kelapa-sawit.webp'),
(9, 'Cara Sandiaga Gaungkan MotoGP Mandalika yang Digelar 48 Hari Lagi', 'Senin, 24 Jan 2022 14:33 WIB\r\nJakarta - Beragam cara dilakukan pemerintah untuk mempromosikan gelaran MotoGP Mandalika 2022 yang berlangsung bulan Maret nanti. Misalnya seperti yang dilakukan Menteri Pariwisata dan Ekonomi Kreatif Sandiaga Salahuddin Uno, yakni dengan menggelar acara touring yang didominasi kaum wanita.\r\nKemenparekraf berkolaborasi dengan Komunitas Srikandi Wonderful Ride akan melakukan touring dan mengeksplorasi beragam destinasi pariwisata dan sentra ekonomi kreatif di Jawa Barat selama tiga hari mulai 25 hingga 27 Januari 2022.\r\n\r\nMengangkat tema destinasi wisata lokal dan melestarikan warisan budaya Jawa Barat, kegiatan ini diharapkan dapat menggaungkan kampanye berwisata #DiIndonesiaAja, sehingga geliat wisatawan semakin bangkit dan membangkitkan ekonomi dengan terbukanya lapangan kerja.\r\n\r\nMenparekraf Sandiaga Uno, usai melepas secara resmi touring Komunitas Srikandi Wonderful Ride, Senin (24/1/2022) di Gedung Sapta Pesona, Jakarta, mengatakan, kegiatan touring ini sesuai dengan tren pariwisata era baru yang personalize, customize, localize and smaller in size.\r\n\r\nSelama kegiatan, Srikandi Wonderful Ride yang terdiri dari beberapa komunitas ini akan touring sejauh 500 kilometer dan singgah di berbagai destinasi pariwisata dan sentra ekonomi kreatif. Mulai sentra pembuatan payung Tasik yang sudah menjadi ikon, dan berakhir di Desa Wisata Cibuntu, Kuningan, Jawa Barat.\r\n\r\n\"Ini adalah bagian dari upaya dalam kebangkitan ekonomi. Saya mengapresiasi karena banyak destinasi dan sentra ekonomi kreatif yang akan dikunjungi,\" kata Sandiaga Uno dalam keterangan resminya.\r\n\r\nIa berharap kunjungan dari komunitas Srikandi Wonderful Ride ini dapat mengangkat isu-isu keberlanjutan lingkungan. Dia juga menitipkan pesan agar peserta touring juga dapat menggaungkan perhelatan MotoGP Mandalika yang rencananya berlangsung bulan Maret mendatang.\r\n\r\n\"Saya titipkan pesan untuk gaungkan MotoGP yang akan berlangsung 48 hari lagi agar Indonesia semakin dikenal. Serta saya juga titipkan pesan selama berkegiatan untuk tetap taat pada rambu-rambu, jangan arogan dan kedepankan safety riding,\" sambung Sandiaga.\r\n\r\nSementara musisi Eddi Brokoli yang akan bertindak sebagai road captain kegiatan ini menjelaskan, kegiatan touring dimulai dari Bandung, tepatnya dari Gedung Sate, dan akan berlanjut ke Rancabuaya, Tasikmalaya dan berakhir di Kuningan.\r\n\r\n', 'Luthfi Anshori SasakNews.com', 'olahraga', 'menteri-pariwisata-dan-ekonomi-kreatif-sandiaga-salahuddin-uno-melepas-secara-resmi-touring-komunitas-srikandi-wonderful-ride--1_169.jpeg'),
(10, 'PKS Dukung Perjanjian Ekstradisi Indonesia-Singapura, Ingatkan Pengalaman Pemerintahan SBY', '26 Jan 2022, 20:03 WIB\r\n\"Selain kesepakatan perjanjian ekstradisi juga disepakati penyerahan zona pengawasan udara bagi penerbangan komersil di sebagian wilayah Riau dan Natuna yang selama puluhan tahun dikelola Singapura kepada Indonesia. Saya kira ini sebuah kemajuan,\" kata Sukamta dalam keterangannya, Rabu (26/1/2022).\r\n\r\nNamun, terkait adanya wacana menggelar latihan tempur di perairan Indonesia, ia mengingatkan bahwa hal itu harus dikaji ulang.\r\n\r\n\"Tentu ini perlu dicermati terkait potensi ancaman terhadap kedaulatan Indonesia. Perlu dikaji dari sisi geostrategi dan geopolitik, mengingat kawasan Laut Cina Selatan yang terus memanas. Jangan sampai Indonesia terjebak pada kutub konflik yang sedang berlangsung,\" kata Sukamta.\r\n\r\nSelain itu, dia menyinggung soal RUU Perjanjian Ekstradisi pada masa SBY, di mana DPR saat itu menolak paket kerja sama pertahanan.\r\n\r\n\"Apakah yang saat ini DPR akan menolak atau menyetujui ratifikasi perjanjian ekstradisi, tentu konstelasi politiknya berbeda dengan dulu,\" lanjutnya.\r\n\r\nMeski saat ini hampir semua usulan pemerintah dikabulkan DPR, Sukamta memastikan kasus ekstradisi ini DPR akan benar-benar cermat.\r\n\r\n\"Saat ini hampir semua RUU usulan pemerintah diamini dan disetujui DPR. Namun demikian tentu pencermatan atas pasal-pasal perjanjian penting untuk dilakukan, guna memastikan keuntungan bagi Indonesia dan tetap prioritaskan keamanan kedaulatan wilayah Indonesia,\" pungkas dia.\r\nPerjanjian Ekstradisi\r\nPresiden Joko Widodo atau Jokowi telah menyepakati sejumlah kesepakatan saat melakukan pertemuan bilateral dengan PM Singapura Lee Hsien Loong di Bintan, Selasa 25 Januari 2022.\r\n\r\nBahkan, salah satunya menjadi sejarah melalui penandatanganan Perjanjian Ekstradisi Indonesia-Singapura, setelah mulai diupayakan pemerintah Indonesia sejak 1998.\r\n\r\nAdapun jenis-jenis tindak pidana yang pelakunya dapat diekstradisi menurut perjanjian ekstradisi ini berjumlah 31 jenis di antaranya tindak pidana korupsi, pencucian uang, suap, perbankan, narkotika, terorisme, dan pendanaan kegiatan yang terkait dengan terorisme.\r\n\r\nMenteri Hukum dan HAM Yasonna H Laoly mengatakan, perjanjian ekstradisi ini memiliki masa retroaktif atau berlaku surut terhitung tanggal diundangkannya selama 18 tahun ke belakang. Hal tersebut sesuai dengan ketentuan maksimal daluwarsa sebagaimana diatur dalam Pasal 78 Kitab Undang-undang Hukum Pidana (KUHP) Indonesia.\r\n\r\n\"Perjanjian ekstradisi ini memungkinkan kedua negara melakukan ekstradisi terhadap pelaku tindak pidana yang meskipun jenis tindak pidananya tidak lugas disebutkan dalam perjanjian ini namun telah diatur dalam sistem hukum kedua negara,\" kata dia.', 'Delvira Hutabarat', 'kesehatan', '059547700_1643101483-20220125-Jokowi-Terima-Lee-Hsien-Loong-2.jpg'),
(11, 'Dicari! Penelitian Ini Butuh Relawan yang Mau Ditulari COVID-19', 'Kamis, 27 Jan 2022 06:50 WIB\r\nJakarta - Para ilmuwan di Inggris tengah mencari relawan yang bersedia ditulari virus Corona. Mereka tengah melakukan penelitian pertama yang diizinkan menginfeksi partisipan dengan COVID-19.\r\nPenelitian yang dilakukan para ilmuwan di Oxford University tersebut diluncurkan pada April 2021, 3 bulan setelah Inggris menjadi negara pertama yang menyetujui riset semacam ini.\r\nPada fase pertama, para ilmuwan akan berfokus untuk mengungkap berapa banyak virus yang dibutuhkan untuk memicu infeksi. Sementara itu, fase kedua akan mengukur respons imun yang dibutuhkan untuk menangkalnya.\r\nPara ilmuwan ingin menemukan infeksi paling lemah yang mungkin terjadi sehingga setengah populasi yang terpapar akan mengalami gejala ringan COVID-19 maupun asimptomatis. Setelah itu, mereka akan memberikan paparan virus dengan dosis tersebut kepada partisipan untuk melihat level antibodi yang dibutuhkan untuk mencegah infeksi.\r\n\r\n\"Ini adalah respons imun yang perlu kita munculkan dengan vaksin baru,\" kata Helen McShane, profesor vaksinologi dari Oxford University yang memimpin penelitian ini, dikutip dari Reuters, Kamis (26/1/2022).\r\n\r\n\r\n\r\n', 'AN Uyung Pramudiarja', 'kesehatan', '66ce40fe-5b86-4a65-b0bc-e5d9f738ff73_169.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profil_perusahaan`
--

CREATE TABLE `tbl_profil_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_profil_perusahaan`
--

INSERT INTO `tbl_profil_perusahaan` (`id_perusahaan`, `nama_perusahaan`, `alamat`, `kontak`, `logo`) VALUES
(1, 'SasakNews', 'Kota Mataram', '087750706877', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` enum('admin','wartawan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_profil_perusahaan`
--
ALTER TABLE `tbl_profil_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_profil_perusahaan`
--
ALTER TABLE `tbl_profil_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
