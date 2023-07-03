-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 02:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ti_pindad01`
--

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Kemenkumham', 'kemenkumham', '<p><br></p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\"> </div>\r\n', 'kemenkumham.jpg', 'Y', 66, '2021-12-20', '09:12:06', 'Senin', 'admin'),
(31, 'Paskhas', 'paskhas', '<p><br></p>\r\n', 'paskhas1.jpg', 'Y', 57, '2021-12-20', '09:40:01', 'Senin', 'admin'),
(28, 'BSSN', 'bssn', '<p><br></p>\r\n', 'BSSN.jpg', 'Y', 90, '2021-12-20', '23:14:05', 'Sabtu', 'admin'),
(53, 'Dapen', 'dapen', '', 'dapen.jpg', 'Y', 35, '2021-12-20', '01:02:50', 'Rabu', 'admin'),
(29, 'PT. Timah', 'pt-timah', '<p><br></p>\r\n', 'timah.jpg', 'Y', 149, '2021-12-20', '03:02:27', 'Minggu', 'admin'),
(51, 'PTPN7', 'ptpn7', '<p><br></p>\r\n', 'ptpn7.jpg', 'Y', 16, '2021-12-20', '22:55:11', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `link` varchar(120) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nama`, `deskripsi`, `link`, `icon`) VALUES
(1, 'HRIS', 'sebuah apliksi berbasis web yang menintegrasikan seluruh data terkait personil perusahaan seperti data pribadi,cuti/lembur,shift kerja,data pengajuan izin keluar komplek,data pengajuan surat perjalanan dinas,hingga perhitungan gaji personil', 'https://ti.pindad.com/detail_prod_hris.php', 'basketball'),
(2, 'E-Office', 'Solusi yang disediakan untuk memberikan kemudahan dalam proses pendistribusian,pengarsipan,pendisposisian surat/dokumen/naskah dinas pada masing-masing unit di perusahaan', 'https://ti.pindad.com/detail_prod_eoffice.php', 'file'),
(3, 'EIS', 'eksekutif information System (EIS) adalah sistem berbasis komputer yang interaktif,yang memungkinkan pihak eksekutif untuk mengakses data dan informasi,sehingga dapat dilakukan pengidentifikasian masalah,pengekplorasian solusi dan menjadi dasar dalam proses perencanaan yang sifatnya strategis', 'https://ti.pindad.com/detail_prod_eis.php', 'tachometer');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` longtext COLLATE latin1_general_ci NOT NULL,
  `judul2` longtext COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_berita`, `id_kategori`, `username`, `judul`, `judul2`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(102, 2, '05144', 'Pentingnya Menerapkan People Analytics dalam SDM', '', 'pentingnya-menerapkan-people-analytics-dalam-sdm', 'Y', '<p>Sebelum teknologi ditemukan, sangatlah sulit bagi organisasi untuk melakukan analisis yang akurat dikarenakan adanya keterbatasan data. Keterbatasan data dan fasilitas untuk pengumpulan data mengenai orang yang terlibat dalam organisasi berpengaruh besar pada cara Sumber Daya Manusia (SDM) mengambil keputusan. Hingga saat ini, pengambilan keputusan SDM sering berdasar hanya pada insting dan intuisi saja. SDM semakin dituntut untuk memperbaiki keputusan mereka berdasarkan data dan analisis, yaitu dengan menggunakan&nbsp;<em><em>People analytics. People analytics</em></em>, yang juga dikenal sebagai&nbsp;<em><em>HR analytics</em></em>, adalah penggunaan data dan teknik pengolahan dan analisis data untuk memahami, meningkatkan, dan memaksimalkan setiap orang yang terlibat dalam organisasi.</p>\r\n\r\n<p><strong>Beberapa keuntungan yang akan didapat dari penerapan&nbsp;<em>People Analytics</em>&nbsp;dalam SDM:</strong></p>\r\n\r\n<ol>\r\n	<li>Mengidentifikasi faktor pendorong performa yang baik</li>\r\n	<li>Meningkatkan produktivitas bisnis</li>\r\n	<li>Meningkatkan kualitas peranan&nbsp;<em>talent acquisition</em></li>\r\n	<li>Meningkatkan efektivitas proses&nbsp;<em>recruitment</em></li>\r\n	<li>Meningkatkan kemampuan&nbsp;<em>recruite</em>&nbsp;dalam menemukan kandidat pekerja dengan kualitas terbaik</li>\r\n</ol>\r\n\r\n<p>Seiring berjalannya waktu, kecanggihan teknologi dalam bidang pengumpulan data dan analisis telah berkembang pesat. Organisasi telah mengetahui bahwa mereka membutuhkan data untuk mencari tahu apa yang memengaruhi orang ingin bergabung, berkinerja baik, dan memutuskan untuk tetap bersama organisasi. Data juga dibutuhkan untuk menemukan&nbsp;<em>talent</em>, seperti siapa yang kemungkinan akan berhasil; siapa yang akan menjadi pemimpin terbaik; dan apa yang diperlukan untuk memberikan layanan pelanggan berkualitas tinggi. Data tersebut lalu akan diproses dan dianalisis sehingga SDM dapat mengambil keputusan yang tepat sesuai dengan tujuan organisasi.</p>\r\n\r\n<p><strong>Berikut 4 langkah pengimplementasian&nbsp;<em>People Analytics</em>:</strong></p>\r\n\r\n<ol>\r\n	<li><strong>Mengidentifikasi pertanyaan yang ingin dijawab oleh organisasi</strong>\r\n\r\n	<ul>\r\n		<li>Tetapkan sasaran yang masuk akal secara spesifik</li>\r\n		<li>Bentuk hipotesis berdasarkan masalah saat ini yang kemungkinan dapat diselesaikan oleh bantuan data</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong><strong>Mengumpulkan data</strong></strong>\r\n\r\n	<ul>\r\n		<li>Tentukan data apa yang yang harus dikumpulkan dan yang harus diukur berdasarkan hipotesis yang telah dibuat</li>\r\n		<li>Gunakan alat pengukuran yang akurat (<em>software</em>) untuk memastikan data telah dikoleksi sesuai standar</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong><strong>Memahami hasil analisis dan mengambil tindakan yang tepat</strong></strong>\r\n\r\n	<ul>\r\n		<li>Analisis data dan pahami hasil analisis dengan seksama</li>\r\n		<li>Tentukan tindakan yang harus diambil berdasarkan hasil analisis tersebut</li>\r\n		<li>Implementasikan tindakan tersebut</li>\r\n		<li><em>Review</em>&nbsp;dan tindak lanjuti hasil yang didapat dari pengimplementasian tersebut</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong><strong>Mendorong terbentuknya budaya pengambilan keputusan yang selalu berdasar pada data yang ditujukan untuk seluruh peranan organisasi</strong></strong>\r\n\r\n	<ul>\r\n		<li>Menjadikan pengoleksian data, penganalisisan informasi, dan pelaksanaan tes sebagai kebiasaan di dalam organisasi untuk mengungkapkan wawasan baru</li>\r\n		<li>Mendorong adanya inovasi</li>\r\n		<li>Menoleransi kesalahan yang terjadi dalam organisasi</li>\r\n		<li>Menekankan&nbsp;<em><em>continuous learning</em></em></li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n', 'Senin', '2019-07-01', '10:24:23', 'People-analytics.jpg', 0, 'sepakbola'),
(104, 23, 'admin', 'MENGENAL PERATURAN PERUSAHAAN (PP) DAN PERJANJIAN KERJA BERSAMA (PKB)', '', 'mengenal-peraturan-perusahaan-pp-dan-perjanjian-kerja-bersama-pkb', 'Y', '<p>Kehidupan bersama pasti memerlukan aturan bersama yang mengatur apa yang menjadi hak dan kewajiban bersama. Hal ini juga berlaku dalam perusahaaan, ketika pengusaha maupun pekerja mengetahui secara pasti apa yang menjadi hak dan kewajibannya demi terwujudnya dan terpeliharanya keselarasan antara peningkatan produktivitas dan kesejahteraan. Diperlukan sebuah peraturan yang memuat tentang apa saja yang boleh dilakukan dan tidak boleh dilakukan. Peraturan tersebut terbagi menjadi dua macam diantaranya Peraturan Perusahaan (PP) dan Perjanjian Kerja Bersama (PKB).</p>\r\n\r\n<p>Peraturan Perusahaan adalah peraturan yang dibuat secara tertulis oleh pengusaha yang memuat syarat-syarat kerja dan tata tertib perusahaan. Sedangkan, Perjanjian Kerja Bersama adalah perjanjian yang merupakan hasil perundingan antara serikat pekerja/ serikat buruh atau beberapa serikat pekerja/ serikat buruh yang tercatat pada instansi yang bertanggung jawab di bidang ketenagakerjaan dengan pengusaha, atau beberapa pengusaha atau perkumpulan pengusaha yang memuat syarat-syarat kerja, hak dan kewajiban kedua belah pihak. Kedua peraturan tersebut memiliki tujuan yang sama.</p>\r\n\r\n<p>Adapun tujuan dari PP dan PKB adalah:</p>\r\n\r\n<ul>\r\n	<li>Memberikan kepastian syarat-syarat kerja di perusahaan</li>\r\n	<li>Memperjelas hak dan kewajiban pekerja dan pengusaha</li>\r\n	<li>Meningkatkan produktivitas kerja</li>\r\n</ul>\r\n\r\n<p>Selanjutnya, pimpinan dan jajaran manajemen harus memahami mengenai ketentuan-ketentuan yang harus dipenuhi dalam menyusun Peraturan Perusahaan dan Perjanjian Kerja Bersama.</p>\r\n\r\n<p><strong>Ketentuan Peraturan Perusahaan</strong></p>\r\n\r\n<ul>\r\n	<li>Sekurang-kurangnya satu perusahaan terdiri dari 10 pekerja</li>\r\n	<li>Berlaku untuk semua pekerja di perusahaan induk dan di cabang (jika memiliki)</li>\r\n	<li>Merupakan kewajiban dan tanggung jawab pengusaha</li>\r\n	<li>Disusun oleh pengusaha dengan memperhatikan saran dan masukan pekerja</li>\r\n	<li>Ketentuan tidak boleh bertentangan atau lebih rendah dengan peraturan perundang-undangan ketenagakerjaan yang berlaku.</li>\r\n	<li>Masa berlaku 2 tahun dan bisa diperpanjang paling lama 1 (satu) tahun</li>\r\n</ul>\r\n\r\n<p><strong>Ketentuan Perjanjian Kerja Bersama</strong></p>\r\n\r\n<ul>\r\n	<li>Dilakukan perundingan dengan perwakilan serikat pekerja/ buruh</li>\r\n	<li>Hanya ada 1 PKB dalam 1 perusahaan yang sama berlaku untuk semua pekerja di perusahaan induk dan di cabang (jika memiliki)</li>\r\n	<li>Jika ada serikat pekerja lebih dari 1 maka yang di ijinkan 3 serikat pekerja dengan anggota min 10% (verifikasi keanggotaan berdasarkan KTA)</li>\r\n	<li>Jumlah tim perunding masing-masing 9 orang dengan kuasa penuh</li>\r\n	<li>Apabila PKB tidak mencapai kesepakatan dan masa berlaku perpanjangan PKB telah habis, maka PKB yang berlaku adalah PKB sebelumnya, sampai PKB yang baru disepakati.</li>\r\n	<li>Masa Berlaku 2 tahun dan bisa diperpanjang paling lama 1 (satu) tahun</li>\r\n</ul>\r\n\r\n<p>Selain itu, juga terdapat muatan-muatan yang harus ada dalam membuat Peraturan Perusahaan dan Perjanjian Kerja Bersama supaya ada kejelasan isi yang telah menjadi kesepakatan antara pengusaha dan pekerja. Berikut ini muatan yang harus diperhatikan:</p>\r\n\r\n<p><strong>Peraturan Perusahaan :</strong></p>\r\n\r\n<ul>\r\n	<li>Hak dan kewajiban pengusaha</li>\r\n	<li>Hak dan kewajiban pekerja atau buruh</li>\r\n	<li>Syarat kerja</li>\r\n	<li>Tata tertib perusahaan</li>\r\n	<li>Jangka waktu berlakunya PP</li>\r\n	<li>Hal-hal yang merupakan pengaturan lebih lanjut dari peraturan perundang-undangan</li>\r\n</ul>\r\n\r\n<p><strong>Perjanjian Kerja Bersama :</strong></p>\r\n\r\n<ul>\r\n	<li>Nama, tempat kedudukan serta alamat serikat pekerja/ serikat buruh</li>\r\n	<li>Nama, tempat kedudukan serta alamat perusahaan</li>\r\n	<li>Nomor serta tanggal pencatatan serikat pekerja/ serikat buruh pada SKPD bidang ketenagakerjaan kabupaten/ kota</li>\r\n	<li>Hak dan kewajiban pengusaha</li>\r\n	<li>Hak dan kewajiban serikat pekerja / serikat buruh serta pekerja/ buruh</li>\r\n	<li>Jangka waktu dan tanggal mulai berlakunya PKB</li>\r\n	<li>Tanda tangan para pihak pembuat PKB</li>\r\n</ul>\r\n\r\n<p>Kemudian, para pimpinan dan jajaran manajemen juga harus memahami alur dalam setiap tahapan membuat Peraturan Perusahaan dan Perjanjian Kerja Bersama yang mengacu pada Permen No.28 Tahun 2014.&nbsp; Berikut ini tahapan-tahapan yang harus diperhatikan:</p>\r\n\r\n<p><strong>Tahapan Pembuatan P</strong><strong>eraturan&nbsp;</strong><strong>P</strong><strong>erusahaan</strong><strong>&nbsp;&amp; P</strong><strong>erjanjian&nbsp;</strong><strong>K</strong><strong>erja&nbsp;</strong><strong>B</strong><strong>ersama</strong></p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>PP</strong></td>\r\n			<td><strong>PKB</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<ul>\r\n				<li>Penyusunan naskah rancangan Peraturan Perusahaan oleh pengusaha</li>\r\n				<li>Pengusaha harus menyampaikan naskah rancangan PP kepada wakil pekerja untuk mendapatkan saran dan pertimbangan secara tertulis.</li>\r\n			</ul>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>Penyusunan tim perunding dari pihak pengusaha dan serikat pekerja</li>\r\n				<li>Melakukan perundingan di tempat, waktu, durasi dan biaya yang sudah disepakati bersama dalam tata tertib perundingan.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n	<li>Pengusaha mengajukan permohonan pengesahan PP kepada Pejabat Kepala SKPD bidang ketenagakerjaan kabupaten/ kota/ Provinsi/ Direktur Jenderal (jika lebih dari 1 provinsi)</li>\r\n	<li>Disertai dengan syarat: membawa surat permohonan, PP rangkap 3, bukti sudah mendapat saran dari pekerja, akta perusahaan, wajib lapor perusahaan, keikutsertaan BPJS, menunjukan struktur dan skala upah</li>\r\n	<li>Dilakukan pengecekan dan penelitian oleh pejabat bidang ketenagakerjaan</li>\r\n	<li>Pengesahan</li>\r\n</ul>\r\n\r\n<p>Setelah perjanjian kerja bersama disepakati dan ditandatangani oleh pengusaha dan wakil pekerja dalam hal ini oleh pengurus serikat pekerja (minimal ketua dan sekretaris) maka selanjutnya didaftarkan pada instansi yang bertangung jawab dibidang ketenagakerjaan dengan maksud:</p>\r\n\r\n<ol>\r\n	<li>Sebagai alat monitoring dan evaluasi pengaturan syarat &ndash; syarat kerja yang dilaksanakan di perusahaan;</li>\r\n	<li>Sebagai rujukan utama jika terjadi perselisihan pelaksanaan perjanjian kerja bersama.</li>\r\n</ol>\r\n', 'Senin', '2019-07-01', '10:21:23', 'mengenal-peraturan-perusahaan-pp-dan-perjanjian-kerja-bersama-pkb-1024x640.jpg', 4, 'film'),
(105, 0, 'admin', 'Peraturan Perusahaan Dan Perjanjian Kerja Bersama (PKB)', '', 'peraturan-perusahaan-dan-perjanjian-kerja-bersama-pkb', 'Y', '<p>Peraturan Perusahaan adalah peraturan yang dibuat secara tertulisoleh pengusaha yang memuat syarat-syarat kerja dan tata tertib perusahaan sesuai dengan ketentuan Pasal 1 angka 20&nbsp;Undang Undang Nomor 13 Tahun 2003 Tentang Ketenagakerjaan. Ketentuan mengenai peraturan perusahaan diatur lebih lanjut pada Pasal 108 sampai dengan Pasal 115 Undang-Undang Nomor 13 Tahun 2003 tentang Ketenagakerjaan (&ldquo;<strong>UU No.13/2003</strong>&rdquo;) dan&nbsp;Peraturan Menteri Tenaga Kerja dan Transmigrasi Nomor PER.16/MEN/XI/2011 tentang Tata Cara Pembuatan dan Pengesahan Peraturan Perusahaan serta Pembuatan dan Pendaftaran Perjanjian Kerja Bersama&nbsp;(&ldquo;<strong>Permenaker 16/2011</strong>&rdquo;).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tujuan dan manfaat pembuatan peraturan perusahaan&nbsp;adalah :</p>\r\n\r\n<ol>\r\n	<li>Dengan peraturan perusahaan yang masa berlakunya dua tahun dan setiap dua tahun harus diajukan perstujuannya kepada departemen tenaga kerja;</li>\r\n	<li>Dengan adanya peraturan perusahaan minimal akan diperoleh kepastian adanya hak dan kewajiban pekerja dan pengusaha;</li>\r\n	<li>Peraturan perusahaan akan mendorong terbentuknya kesepakatan kerja bersama sesuai dengan maksud permen no. 2 tahun 1978 diatas;</li>\r\n	<li>Setelah peraturan disyahkan oleh departemen tenaga kerja maka perusahaan wajib memberitahukan isi peraturan perusahaan; dan</li>\r\n	<li>Pada perusahaan yang telah mempunyai kesepakatan kerja bersama tidak dapat menggantinya dengan peratuean perusahaan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pengusaha yang mempekerjakan paling sedikit 10 (sepuluh) orang pekerja/buruh wajib membuat peraturan perusahaan. Peraturan perusahaan mulai berlaku setelah mendapat pengesahan dari Menteri Tenaga Kerja dan Transmigrasi &nbsp;atau Pejabat yang ditunjuk dan peraturan perusahaan berlaku untuk jangka waktu paling lama 2 (dua) tahun serta wajib diperbaharui setelah habis masa berlakunya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Namun, kewajiban pembuatan Peraturan Perusahaan tidak berlaku apabila perusahaan telah memiliki perjanjian kerja bersama. Adapun ketentuan di dalam Peraturan Perusahaan tidak boleh bertentangan dengan peraturan perundang-undangan yang berlaku, serta tidak boleh lebih rendah dari peraturan perundang-undangan terlebih Undang Nomor 13 Tahun 2003 tentang Ketenagakerjaan. Peraturan Perusahaan harus disahkan oleh pejabat yang berwenang. Yang dimaksud sebagai pejabat yang berwenang adalah sebagai berikut (&ldquo;Pejabat&rdquo;).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Setiap perusahaan yang bergerak dibidang perdagangan jasa dan/atau barang baik nasional maupun multinasional dalam menjalankan manajemen dan operasionalnya sehari-hari yang berkaitan dengan ketenagakerjaan pastinya membutuhkan suatu peraturan perusahaan yang berlaku dan dipatuhi oleh seluruh karyawan agar dapat berjalan dengan baik dan sesuai dengan peraturan perundang-undangan yang berlaku. Pengertian peraturan perusahaan berdasarkan Pasal 1 angka 20 Undang-Undang Nomor 13 Tahun 2003 tentang Ketenagakerjaan (&ldquo;UU Ketenagakerjaan&rdquo;) adalah peraturan yang dibuat secara tertulis oleh pengusaha yang memuat syarat-syarat kerja dan tata tertib perusahaan. Peraturan perusahaan disusun oleh pengusaha dan menjadi tanggung jawab dari pengusaha yang bersangkutan. Penyusunan peraturan perusahaan dilakukan dengan memperhatikan saran dan pertimbangan dari wakil pekerja/buruh di perusahaan yang bersangkutan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Peraturan perusahaan bertujuan untuk menjamin keseimbangan antara hak dan kewajiban pekerja, serta antara kewenangan dan kewajiban pengusaha, memberikan pedoman bagi pengusaha dan pekerja untuk melaksanakan tugas kewajibannya masing-masing, menciptakan hubungan kerja harmonis, aman dan dinamis antara pekerja dan pengusaha, dalam usaha bersama memajukan dan menjamin kelangsungan perusahaan, serta meningkatkan kesejahteraan pekerja dan keluarganya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Menurut Pasal 111 UU Ketenegakerjaan, Peraturan perusahaan sekurang-kurangnya memuat:</p>\r\n\r\n<ol>\r\n	<li>hak dan kewajiban pengusaha;</li>\r\n	<li>hak dan kewajiban pekerja/buruh;</li>\r\n	<li>syarat kerja;</li>\r\n	<li>tata tertib perusahaan; dan</li>\r\n	<li>jangka waktu berlakunya peraturan perusahaan.</li>\r\n</ol>\r\n\r\n<p>Peraturan perusahaan dalam waktu paling lama 30 (tiga puluh) hari kerja sejak naskah peraturan perusahaan diterima harus sudah mendapat pengesahan oleh Menteri atau pejabat yang ditunjuk. Apabila peraturan perusahaan telah memenuhi ketentuan dalam Pasal 111 ayat (1) dan (2) UU Ketenagakerjaan, tetapi dalam jangka waktu 30 (tiga puluh) hari kerja belum mendapatkan pengesahan dari Menteri atau Pejabat yang ditunjuk, maka peraturan perusahaan dianggap telah mendapatkan pengesahan. Namun, apabila peraturan perusahaan belum memenuhi persyaratan dalam Pasal 111 ayat (1) dan (2) UU Ketenagakerjaan, maka Menteri atau pejabat yang ditunjuk harus memberitahukan secara tertulis kepada pengusaha mengenai perbaikan peraturan perusahaan. Dan dalam waktu paling lama 14 (empat belas) hari kerja sejak tanggal pemberitahuan diterima oleh pengusaha, pengusaha wajib menyampaikan kembali peraturan perusahaan yang telah diperbaiki tersebut kepada Menteri atau pejabat yang ditunjuk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pasal 113 UU Ketenagakerjaan mengatur bahwa perubahan peraturan perusahaan sebelum berakhir jangka waktu berlakunya hanya dapat dilakukan atas dasar kesepakatan antara pengusaha dan wakil pekerja/buruh. Hasil perubahan peraturan perusahaan harus mendapat pengesahan dari Menteri atau pejabat yang ditunjuk. Pengusaha wajib memberitahukan dan menjelaskan isi peraturan perusahaan, serta memberikan naskah peraturan perusahaan atau perubahannya kepada pekerja/buruh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pasal 188 UU Ketenagakerjaan mengatur ketentuan sanksi pidana pelanggaran berupa denda paling sedikit Rp. 5.000.000,00 (lima juta rupiah) dan paling banyak Rp. 50.000.000,00 (lima puluh juta rupiah) atas pelanggaran Pasal 111 ayat (3) UU Ketenagakerjaan mengenai jangka waktu berlakunya peraturan perusahaan dan Pasal 114 UU Ketenagakerjaan tentang kewajiban pengusaha untuk memberitahukan dan menjelaskan isi peraturan perusahaan serta memberikan naskah peraturan perusahaan kepada pekerja/buruh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tugas penyusunan Peraturan Perusahaan merupakan tanggung jawab dari Perusahaan. Sebelum disahkan oleh Menteri, penyusunan itu dilakukan oleh Perusahaan dengan memperhatikan saran dan pertimbangan dari Karyawan terhadap draf Peraturan Perusahaan. Karena masukan dari Karyawan itu bersifat &ldquo;saran&rdquo; dan &ldquo;pertimbangan&rdquo;, maka pembuatan Peraturan Perusahaan tidak dapat diperselisihkan &ndash; bila terjadi perbedaan pendapat antara Karyawan dan Perusahaan. Karena sifatnya saran dan pertimbangan, maka Karyawan dapat juga untuk tidak memberikan saran dan pertimbangan tersebut meskipun telah diminta oleh Perusahaan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pemilihan wakil Karyawan dalam rangka memberikan saran dan pertimbangannya harus dilakukan dengan tujuan untuk mewakili kepentingan para Karyawan. Pemilihan itu dilakukan secara demokratis, yaitu dipilih oleh Karyawan sendiri terhadap Karyawan yang mewakili setiap unit kerja di dalam Perusahaan. Apabila di dalam Perusahaan telah terbentuk Serikat Pekerja, maka saran dan pertimbangan tersebut diberikan oleh pengurus Serikat Pekerja.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Untuk memperoleh saran dan pertimbangan dari wakil Karyawan, pertama-tama Perusahaan harus menyampaikan naskah rancangan Peraturan Perusahaan itu kepada wakil Karyawan &ndash; &nbsp;atau Serikat Pekerja. Saran dan pertimbangan tersebut harus sudah diterima kembali oleh Perusahaan dalam waktu 14 hari kerja sejak tanggal diterimanya naskah rancangan Peraturan Perusahaan oleh wakil Karyawan. Jika dalam waktu 14 hari kerja itu wakil Karyawan tidak memberikan saran dan pertimbangannya, maka Perusahaan sudah dapat mengajukan pengesahan Peraturan Perusahaan itu tanpa saran dan pertimbangan dari Karyawan &ndash; dengan disertai bukti bahwa Perusahaan telah meminta saran dan pertimbangan dari wakil Karyawan namun Karyawan tidak memberikannya.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>2.&nbsp;&nbsp; Perjanjian Kerja Bersama (PKB)</strong></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Perjanjian kerja dalam bahasa Belanda adalah&nbsp;<strong><em>Arbeidsoverenkoms</em></strong>, mempunyai beberapa pengertian. Pasal 1601 a KUHPerdata memberikan pengertian sebagai berikut :</p>\r\n\r\n<p><strong><em>&ldquo;Perjanjian kerja adalah suatu perjanjian dimana pihak ke-1 (satu)/buruh atau pekerja mengikatkan dirinya untuk dibawah perintah pihak yang lain, si majikan untuk suatu waktu tertentu melakukan pekerjaan dengan menerima upah&rdquo;.</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Undang Undang Nomor 13 Tahun 2003 Tentang Ketenagakerjaan, Pasal 1 angka 14 memberikan pengertian yakni :</p>\r\n\r\n<p><strong><em>&ldquo;Perjanjian kerja adalah suatu perjanjian antara pekerja/buruh dan pengusaha atau pemberi kerja yang memuat syarat-syarat kerja hak dan kewajiban kedua belah pihak&rdquo;.</em></strong></p>\r\n\r\n<p>Perjanjian Kerja adalah Suatu perjanjian yang dibuat antara pekerja secara perorangan dengan pengusaha yang pada intinya memuat hak dan kewajiban masing-masing pihak.Untuk mengetahui hak dan kewajiban secara pasti dalam rangka meningkatkan kesejahteraan dan ketenangan kerja maka perlu adanya suatu pedoman/aturan dalam pelaksanaan hubungan kerja.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Perjanjian Kerja Bersama</strong>&nbsp;(<strong>PKB</strong>)&nbsp;adalah suatu kesepakatan secara tertulis dengan menggunakan bahasa Indonesia yang dibuat secara bersama &ndash; sama antara pengusaha atau beberapa pengusaha dengan organisasi serikat pekerja/gabungan organisasi serikat pekerja yang sudah terdaftar pada instansi yang bertanggung jawab dibidang ketenagakerjaan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Organisasi serikat pekerja ini minimal mempunyai anggota 50 % lebih dari seluruh Karyawan yang ada di perusahaan. Persyaratan ini harus dipenuhi karena kalau kurang maka dapat berkoalisi dengan organisasi serikat pekerja sampai mencapai 50 % lebih atau dapat juga meminta dukungan dari karyawan lainnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam hal suatu perusahaan terdapat lebih dari 1 serikat pekerja/buruh maka yang berhak mewakili pekerja/buruh adalah serikat pekerja/buruh yang memiliki anggota lebih dari 50 % dari seluruh jumlah pekerja/buruh di perusahaan tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Adapun dasar dibuatnya perjanjian Kerja Bersama ini merujuk pada &nbsp;Undang &ndash; undang No. 18 Tahun 1956 yang diratifikasi dari Konvensi No. 98 Organisasi Perburuhan Internasional (ILO) mengenai berlakunya dasar - dasar dari hak untuk berorganisasi dan berunding bersama, Kemudian oleh pemerintah dikeluarkan :</p>\r\n\r\n<ol>\r\n	<li>Undang Undang Nomor 13 Tahun 2003 Tentang Ketenagakerjaan&nbsp;yang diatur mulai dari pasal 115 sampai dengan 135;</li>\r\n	<li>Keputusan Menteri Tenaga Kerja dan Transmigrasi RI No. Kep/48/Men/IV/2004 tentang Tata Cara Pembuatan dan Pengesahan Peraturan Perusahaan dan Pendaftaran Perjanjian Kerja Bersama;</li>\r\n	<li>Kep.48/MEN/IV/2004, tentang Tata Cara Pembuatan dan Pengesahan Peraturan Perusahaan serta Pembuatan dan Pendaftaran Perjanjian Kerja Bersama.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fungsi Perjanjian Kerja Bersama adalah sarana untuk memuat dan menuangkan kesepakatan baru yang didasari atas kesepakatan antara serikat pekerja/buruh dengan pengusaha yang disebut Lex Special artinya sebuah prodak yang tidak diatur dalam Undang &ndash; undang maka dia akan menjadi normatif bila mana sudah disepakati dan dituangkan dalam PKB serta telah diketahui oleh Dinas yang terkait dan mengikat kedua belah pihak untuk dilaksanakan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tujuan pembuatan Perjanjian Kerja Bersama :</p>\r\n\r\n<ol>\r\n	<li>Mempertegas dan memperjelas hak &ndash; hak dan kewajiban pekeja dan pengusaha;</li>\r\n	<li>Memperteguh dan menciptakan hubungan industrial yang harmonis dalam perusahaan;</li>\r\n	<li>Menetapkan secara bersama syarat &ndash; syarat kerja keadaan industrial yang harmonis; dan&nbsp;&nbsp;</li>\r\n	<li>Menentukan&nbsp;hubungan ketenagakerjaan yang belum diatur dalam peraturan perundang &ndash;undangan.</li>\r\n</ol>\r\n\r\n<p>Manfaat Perjanjian Kerja Bersama :</p>\r\n\r\n<ol>\r\n	<li>Baik pekerja maupun pengusaha akan lebih memahami tentang hak dan kewajiban masing &ndash; masing;</li>\r\n	<li>Mengurangi timbulnya perselisihan hubungan industrial atau hubungan ketenagakerjaan sehingga dapat menjamin kelancaran proses produksi dan peningkatan usaha;</li>\r\n	<li>Membantu ketenangan kerja pekerja serta mendorong semangat dan kegaitan bekerja yang lebih tekun dan rajin; dan</li>\r\n	<li>Pengusaha dapat menganggarkan biaya tenaga kerja (labour cost) yang perlu dicadangkan atau disesuaikan dengan masa berlakunya PKB.</li>\r\n</ol>\r\n\r\n<p>Perundingan Kerja Bersama dimulai dengan menyepakati Tata Tertib Perundingan yang sekurang - kurangnya memuat :</p>\r\n\r\n<ol>\r\n	<li>Tujuan pembuatan tata tertib;</li>\r\n	<li>Susunan tim perundingan;</li>\r\n	<li>Lamanya masa perundingan;</li>\r\n	<li>Materi perundingan;</li>\r\n	<li>Tempat perundingan;</li>\r\n	<li>Tata cara perundingan;</li>\r\n	<li>Cara penyelesaian apabila terjadi kebuntuan perundingan;</li>\r\n	<li>Sahnya perundingan;&nbsp;dan</li>\r\n	<li>Biaya perundingan.</li>\r\n</ol>\r\n\r\n<p>Biaya perundingan pembuatan perjanjian kerja bersama menjadi beban pengusaha, kecuali disepakati lain oleh kedua belah pihak.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tata Tertib Perundingan sangat penting ditetapkan karena hal ini menyangkut :</p>\r\n\r\n<ol>\r\n	<li>Masalah hak dan kewajiban tim perundingan masing &ndash; masing pihak (khususnya mengenai dispensasi bagi tim perunding dari pihak serikat pekerja);</li>\r\n	<li>Masalah legalitas tim perunding dari masing &ndash; masing pihak (khususnya menyangkut keabsahan status selaku tim perunding serta kewenangannya untuk mengambil keputusan);</li>\r\n	<li>Masalah kewenangan tentang siapa pembuat keputusan (decision maker) dari masing &ndash; masing tim perunding;</li>\r\n	<li>Masalah tata cara pengesahan materi perundingan;</li>\r\n	<li>Jadwal/waktu perundingan; dan</li>\r\n	<li>Fasilitas bagi tim perunding selama perundingan berjalan.</li>\r\n</ol>\r\n\r\n<p>Tata Cara dalam Perundingan :</p>\r\n\r\n<p>a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Baik tim perunding dari serikat pekerja maupun tim perunding dari perusahaan harus menetapkan seorang juru bicara.</p>\r\n\r\n<p>b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Juru bicara dalam tim perundingan tidak harus ketua tim perundingan akan tetapi orang yang benar &ndash; benar dianggap mampu/menguasai etika perundingan.</p>\r\n\r\n<p>c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Setiap materi/konsep PKB yang akan dibahas harus disampaikan oleh juru bicara tim perundingan.</p>\r\n\r\n<p>d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Setiap materi/konsep yang akan dibahas selanjutnya dicatat dalam risalah perundingan yang dilakukan oleh notulis.</p>\r\n\r\n<p>e.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Materi/konsep PKB yang telah dibahas selanjutnya dicatat dalam risalah perundingan yang dilakukan oleh notulis.</p>\r\n\r\n<p>f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Materi/konsep PKB yang belum disepakati dapat dipending/tunda untuk selanjutnya dibahas kembali setelah seluruh konsep PKB selesai dirundingkan.</p>\r\n\r\n<p>g.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dalam hal ternyata ada materi/konsep yang tidak dapat disepakati maka dapat melaporkan kepada instansi yang bertanggung jawab dibidang ketenagakerjaan, antara lain :</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Instansi yang bertanggung jawab dibidang ketenagakerjan di Kabupaten/Kota apabila lingkup berlakunya perjanjian kerja bersama hanya mencakup satu Kabupaten/Kota;</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Instansi yang bertanggung jawab dibidang ketenagakerjan di Provinsi, apabila lingkup berlakunya perjanjian kerja bersama lebih dari satu Kabupaten/Kota di satu Provinsi;</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ditjen Pembina Hubungan Industrial pada Departemen Tenaga Kerja dan Transmigrasi apabila lingkup berlakunya perjanjian kerja bersama lebih dari satu provinsi.&nbsp;Yang penyelesaiannya melalui mediasi dan akan dikeluarkan ajnuran oleh mediator tersebut, &nbsp;para pihak atau salah satu pihak tidak menerima anjuran mediator maka atas kesepakatan para pihak mediator melaporkan kepada Menteri untuk menetapkan langkah &ndash; langkah penyelesaian, kemudian menteri dapat menunjuk pejabat untuk melakukan penyelesaian pembuatan PKB dan apabila tidak juga mencapai kesepakatan maka salah satu pihak dapat mengajukan gugatan ke Pengadilan Hubungan Industrial didaerah hukum tempat pekerja/buruh bekerja.</p>\r\n\r\n<p>h.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Setelah seluruh isi konsep PKB dirundingkan dan disepakati maka isi konsep PKB tersebut disalin kembali berdasarkan yang telah disepakati untuk selanjutnya dilakukan penanda tanganan secara keseluruhan oleh kedua belah pihak.</p>\r\n\r\n<p>i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Penandatangan PKB oleh serikat pekerja/buruh dilakukan oleh Ketua dan Sekretaris pengurus serikat pekerja/buruh dan dari pihak perusahaan dilakukan oleh Presiden direktur/Direktur utama perusahaan tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Setelah perjanjian kerja bersama disepakati dan ditandatangani oleh pengusaha dan wakil pekerja dalam hal ini oleh pengurus serikat pekerja (minimal ketua dan sekretaris) maka selanjutnya didaftarkan pada instansi pada instansi yang bertangung jawab dibidang ketenagakerjaan dengan maksud :</p>\r\n\r\n<ol>\r\n	<li>Sebagai alat monitoring dan evaluasi pengaturan syarat &ndash; syarat kerja yang dilaksanakan di perusahaan;</li>\r\n	<li>Sebagai rujukan utama jika terjadi perselisihan pelaksanaan Perjanjian Kerja Bersama.</li>\r\n</ol>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kerangka isi Perjanjian Kerja Bersama antara lain :</p>\r\n\r\n<p>a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mukadimah</p>\r\n\r\n<p>b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Umum&nbsp;:</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;Istilah &ndash; istilah,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;Pihak &ndash; pihak yang mengadakan kesepakatan,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;Luasnya kesepakatan,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;Kewajiban pihak &ndash; pihak yang mengadakan kesepakatan</p>\r\n\r\n<p>c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pengakuan, Jaminan dan Fasilitas bagi Serikat Pekerja/Buruh</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;Pengakuan hak &ndash; hak pengusaha dan Serikat Pekerja/BuruhJaminan bagi Serikat Pekerja/Buruh,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;Fasilitas bagi Serikat Pekerja/Buruh,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;Lembaga kerja sama bipartit,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;Pendidikan dan penyuluhan hubungan industrial</p>\r\n\r\n<p>d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hubungan Kerja</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Penerimaan pekerja baru,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Masa percobaan,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Surat keputusan pengangkatan,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Golongan dan jabatan pekerja,</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kesempatan berkarir,</p>\r\n\r\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pendidikan dan pelatihan kerja,</p>\r\n\r\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mutasi dan prosedurnya,</p>\r\n\r\n<p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Penilaian prestasi kerja,</p>\r\n\r\n<p>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Promosi,</p>\r\n\r\n<p>10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tenaga kerja asing</p>\r\n\r\n<p>e.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Waktu kerja, istilah kerja dan lembur</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hari kerja,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jam kerja, istirahat dan shift kerja,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lembur,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perhitungan upah lembur</p>\r\n\r\n<p>f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pembebasan dari kewajiban bekerja</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Istirahat mingguan,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hari libur resmi,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cuti tahunan,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cuti besar,</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cuti haid,</p>\r\n\r\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cuti hamil,</p>\r\n\r\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cuti sakit,</p>\r\n\r\n<p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ijin meninggalkan pekerjaan dengan upah,</p>\r\n\r\n<p>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ijin meninggalkan pekerjaan tanpa upah</p>\r\n\r\n<p>g.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Keselamatan dan kesehatan kerja (K3)</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prinsip &ndash; prinsip K3,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hygienis perusahaan dan kesehatan,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pakaian kerja dan sepatu kerja,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Peralatan kerja,</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Alat pelindung diri,</p>\r\n\r\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Panitia pembina keselamatan kesehatan kerja</p>\r\n\r\n<p>h.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pengupahan</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pengertian upah,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Prinsip dasar dan sasaran,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dasar penetapan upah,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Komponen upah,</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Waktu pemberian upah,</p>\r\n\r\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Administrasi upah,</p>\r\n\r\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tunjangan jabatan,</p>\r\n\r\n<p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tunjangan keluarga,</p>\r\n\r\n<p>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tunjangan keahlian,</p>\r\n\r\n<p>10.&nbsp;&nbsp;Tunjangan keahlian,</p>\r\n\r\n<p>11.&nbsp;&nbsp;Tunjangan perumahan,</p>\r\n\r\n<p>12.&nbsp;&nbsp;Tunjangan tempat kerja yang membahayakan keselamatan,</p>\r\n\r\n<p>13.&nbsp;&nbsp;Uang makan,</p>\r\n\r\n<p>14.&nbsp;&nbsp;Uang transport,</p>\r\n\r\n<p>15.&nbsp;&nbsp;Premi hadir,</p>\r\n\r\n<p>16.&nbsp;&nbsp;Premi shift,</p>\r\n\r\n<p>17.&nbsp;&nbsp;Premi produksi/bonus,</p>\r\n\r\n<p>18.&nbsp;&nbsp;Premi perjalanan dinas,</p>\r\n\r\n<p>19.&nbsp;&nbsp;Tunjangan hari raya,</p>\r\n\r\n<p>20.&nbsp;&nbsp;Jasa produksi/bonus,</p>\r\n\r\n<p>21.&nbsp;&nbsp;Tunjangan masa kerja,</p>\r\n\r\n<p>22.&nbsp;&nbsp;Upah minimum,</p>\r\n\r\n<p>23.&nbsp;&nbsp;Skala upah,</p>\r\n\r\n<p>24.&nbsp;&nbsp;Penyesuaian upah,</p>\r\n\r\n<p>25.&nbsp;&nbsp;Kenaikan upah atas dasar premi,</p>\r\n\r\n<p>26.&nbsp;&nbsp;Kenaikan upah karena promosi,</p>\r\n\r\n<p>27.&nbsp;&nbsp;Pajak penghasilan</p>\r\n\r\n<p>i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pengobatan dan perawatan</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Poliklinik perusahaan,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pengobatan diluar poliklinik,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Perawatan dirumah sakit,</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Biaya bersalin,</p>\r\n\r\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pembelian kaca mata,</p>\r\n\r\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pengobatan pada dokter spesialis,</p>\r\n\r\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Keluarga berencana,</p>\r\n\r\n<p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Konsultasi psikologis &amp; tes bakat anak</p>\r\n\r\n<p>j.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jaminan sosial</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jaminan kecelakaan kerja,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jaminan kematian,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Jaminan hari tuaDana pensiun</p>\r\n\r\n<p>k.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kesejahteraan</p>\r\n\r\n<p>l.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tata tertib kerja</p>\r\n\r\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kewajiban dasar pekerja,</p>\r\n\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Larangan &ndash; larangan,</p>\r\n\r\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pelanggaran yang dapat mengakibatkan pemutusan hubungan kerja (PHK),</p>\r\n\r\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sanksi atas pelanggaran tata tertib kerja</p>\r\n\r\n<p>m.&nbsp;&nbsp;&nbsp;&nbsp;Pemutusan hubungan kerja</p>\r\n\r\n<p>n.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Penyelesaian keluh kesah pekerja</p>\r\n\r\n<p>Tata cara penyelesaian keluh kesah</p>\r\n\r\n<p>o.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pelaksanaan dan penutup</p>\r\n\r\n<p>p.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tanda tangan para pihak.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Syarat &ndash; syarat berlakunya antara lain&nbsp;:</p>\r\n\r\n<ol>\r\n	<li>Satu perusahaan hanya dapat dibuat satu Perjanjian Kerja Bersama yang berlaku bagi seluruh pekerja/buruh diperusahaan yang bersangkuan;</li>\r\n	<li>Apabila perusahan memiliki cabang, maka dibuat Perjanjian Kerja Bersama (PKB) induk yang berlaku disemua cabang perusahaan serta dapat dibuat PKB turunan yang berlaku di masing &ndash; masing cabang perusahaan;</li>\r\n	<li>PKB induk memuat ketentuan &ndash; ketentuan yang berlaku umum di seluruh cabang perusahaan sedang PKB turunan yang dibuat cabang memuat pelaksanaan PKB induk yang disesuaikan dengan kondisi cabang perusahaan masing &ndash; masing;</li>\r\n	<li>Dalam hal beberapa perusahaan tergabung dalam satu grup dan masing &ndash; masing mempunyai badan hukum sendiri, maka PKB dibuat dan dirundingkan oleh masing &ndash; masing perusahaan.</li>\r\n</ol>\r\n\r\n<p>Setelah ditandatangani oleh para pihak maka dilakukan Pendaftaran dengan dilampiri naskah perjanjian kerja bersama yang dibuat rangkap tiga bermaterai cukup yang telah ditandatangani oleh pengusaha dan serikat pekerja/buruh.&nbsp;Setelah menerima surat keputusan pendaftaran perjanjian kerja bersama , maka pengusaha dan pekerja/buruh wajib melaksanakan ketentuan yang ada dan memberitahukan pada seluruh pekerja/buruh tentang isi perjanjian tersebut atau kalau ada beserta perubahannya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam&nbsp;Pasal 123 Undang-Undang no.13/2003 menyatakan masa berlaku PKB paling lama 2 (dua) tahun dan dapat diperpanjang paling lama 1 (satu) tahun berdasarkan kesepakatan tertulis antara pengusaha dengan serikat pekerja. Perundingan pembuatan PKB berikutnya dapat dimulai paling cepat 3 (tiga) bulan sebelum berakhirnya PKB yang sedang berlaku. Apabila perundingan tidak mencapai kesepakatan, maka PKB yang sedang berlaku, akan tetap berlaku untuk paling lama 1 (satu) tahun ke depan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>DAFTAR PUSTAKA&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Undang Undang Nomor 13 Tahun 2003 Tentang Ketenagakerjaan,</li>\r\n	<li>Peraturan Menteri Tenaga Kerja dan Transmigrasi Nomor PER.16/MEN/XI/2011 tentang Tata Cara Pembuatan dan Pengesahan Peraturan Perusahaan serta Pembuatan dan Pendaftaran Perjanjian Kerja Bersama,</li>\r\n	<li>Undang-Undang No. 21 Tahun 2000&nbsp;Tentang Serikat Pekerja/Serikat Buruh,</li>\r\n	<li>Kep.48/MEN/IV/2004, tentang Tata Cara Pembuatan dan Pengesahan Peraturan Perusahaan serta Pembuatan dan Pendaftaran Perjanjian Kerja Bersama,</li>\r\n	<li>Asyhadie Zaeni, SH.,M.Hum.2008.<em>Hukum Kerja.&nbsp;</em>Jakarta. Raja Grafindo Persada,</li>\r\n	<li>Lalu,S.H,M.Hum.2008.<em>Pengantar Hukum Ketenagakerjaan Indonesia.</em>Jakarta.</li>\r\n</ol>\r\n', 'Jumat', '2019-08-23', '14:51:08', 'peraturan-perusahaan-perjanjian-kerja-bersama.jpg', 1, ''),
(122, 22, 'admin', '', '', 'aturan-terbaru-pendirian-perusahaan-dan-izin-usaha-di-tahun-2019', 'Y', '<p><strong>Aturan terbaru pendirian perusahaan dan izin usaha tahun 2019 diharapkan mendukung pertumbuhan ekonomi Indonesia yang diprediksi berada di angka 5,2 persen. Ini artinya peluang untuk berbisnis masih terbuka lebar. Apa saja aturan dan kebijakannya?</strong></p>\r\n\r\n<p>Pemerintah mengatakan bahwa tahun ini investasi dan pengeluaran modal domestik menjadi salah satu pendorong positif. Selain itu proyeksi pertumbuhan ekonomi tersebut didasari oleh usaha pemerintah untuk pengetatan impor, peningkatan ekspor, dan menggenjot kenaikan wisatawan (<a href=\"https://www.thejakartapost.com/news/2018/11/27/bank-indonesia-revises-down-gdp-growth-projection-in-2019.html\">The Jakarta Post, 27 November 2018</a>). Melihat usaha pemerintah tersebut, kamu bisa memanfaatkan peluang di bidang-bidang terkait hal di atas.</p>\r\n\r\n<p>Selain menggenjot beberapa hal di atas, pemerintah juga mengeluarkan aturan guna mempermudah pelaku usaha. Salah satu yang merevolusi sistem perizinan berusaha di Indonesia adalah&nbsp;<a href=\"https://easybiz.id/download/pp-no-24-tahun-2018-tentang-pelayanan-perizinan-berusaha-terintegrasi-secara-elektronik/\">Peraturan Pemerintah 24 Tahun 2018 Tentang Pelayanan Perizinan Berusaha Terintegrasi Secara Elektronik</a>. Peraturan Pemerintah tersebut merupakan dasar berlakunya sistem&nbsp;<em>Online Single Submission</em>&nbsp;(OSS). Dengan sistem ini, dalam sekitar &nbsp;2 bulan pemerintah telah menerbitkan 38.835 Nomor Induk Berusaha (NIB) (<a href=\"https://bisnis.tempo.co/read/1128617/darmin-nasution-oss-telah-terbitkan-38-835-nomor-induk-berusaha\">Tempo, 21 September 2018</a>). Hal tersebut tak lepas dari kecepatan memproses perizinan berusaha yang diklaim bisa selesai hanya dalam waktu 1 jam (<a href=\"https://tirto.id/sebelas-pejabat-resmikan-penggunaan-oss-dalam-berinvestasi-cNMZ\">Tirto, 9 Juli 2018</a>).</p>\r\n\r\n<p>Lahirnya PP 24/2018 (PP tentang OSS) menghasilkan banyak perubahan yang signifikan baik dalam proses dan syarat untuk mendirikan perusahaan maupun untuk mendapatkan izin usaha. Tentu saja perubahan tersebut disambut pro dan kontra oleh pelaku usaha. Banyak yang mendukung namun tidak sedikit pula yang mengkritik. Apa saja aturan terbaru seputar pendirian perusahaan dan pengajuan izin usaha di tahun 2019 yang wajib kamu ketahui?</p>\r\n\r\n<ol>\r\n	<li><strong>NIB berlaku sebagai TDP, API, dan Akses Kepabeanan</strong></li>\r\n</ol>\r\n\r\n<p>Nomor Induk Berusaha (NIB) adalah hal baru yang diintrodusir di OSS. Pelaku usaha, apapun bentuk perusahaannya baik usaha perorangan, badan usaha, maupun badan hukum harus memiliki NIB. NIB adalah identitas pelaku usaha yang diterbitkan oleh Lembaga OSS setelah pelaku usaha melakukan pendaftaran.</p>\r\n\r\n<p>NIB juga berlaku sebagai TDP, API (Angka Pengenal Impor), dan Akses Kepabeanan. Berbeda dengan proses perizinan usaha sebelumnya dimana untuk masing-masing item dokumen tersebut diajukan secara terpisah dan ke instansi yang berbeda, maka di OSS prosesnya sudah disatukan. Lebih jauh lagi, NIB ini juga berfungsi sebagai pendaftaran BPJS</p>\r\n\r\n<ol>\r\n	<li><strong>Perusahaan berbentuk Persekutuan Perdata, Persekutuan Firma, dan CV harus didaftarkan di Sistem Administrasi Badan Usaha (SABU).</strong></li>\r\n</ol>\r\n\r\n<p>Aturan mengenai kewajiban perusahaan berbentuk persekutuan perdata, persekutuan firma, dan persekutuan komanditer (CV) didaftarkan di SABU yang dikelola oleh Kementerian Hukum dan HAM. Melalui&nbsp;<a href=\"https://www.easybiz.id/download/permenkumham-no-17-tahun-2018-tentang-pendaftaran-cv-firma-dan-persekutuan-perdata/\">Permenkumham No. 17 Tahun 2018 Tentang Pendaftaran Persekutuan Komanditer, Persekutuan Firma, dan Persekutuan Perdata (Permenkumham No.17/2018)</a>&nbsp;ditentukan bahwa permohonan pendaftaran pendirian CV, Firma, dan Persekutuan Perdata diajukan oleh pemohon kepada Menteri Hukum dan Ham melalui SABU. Sebelumnya, sesuai dengan ketentuan Pasal 23 KUHD yang menyatakan bahwa baik persekutuan perdata, persekutuan firma, dan persekutuan komanditer akta pendiriannya harus didaftarkan di pengadilan negeri setempat.</p>\r\n\r\n<p>Untuk&nbsp;badan usaha yang sudah berdiri sebelum Permekumham No. 17 Tahun 2018, pemerintah masih memberikan kelonggaran. Dalam aturan peralihannya disebutkan bahwa&nbsp; persekutuan perdata, persekutuan firma, dan persekutuan komanditer yang telah terdaftar di pengadilan negeri berdasarkan peraturan perundang-undangan, dalam jangka waktu 1 (satu) tahun setelah berlakunya&nbsp;aturan ini wajib melakukan pencatatan pendaftaran tersebut sesuai dengan peraturan&nbsp;yang berlaku. Artinya, mulai 2 Agustus 2019 nanti, persekutuan perdata, persekutuan firma, dan persekutuan komanditer yang sudah didaftarkan di pengadilan negeri wajib didaftarkan di sistem Kemenkumham (SABU).</p>\r\n\r\n<ol>\r\n	<li><strong>Perlindungan Nama untuk Persekutuan Perdata, Persekutuan Firma, dan&nbsp;CV</strong></li>\r\n</ol>\r\n\r\n<p>Aturan penamaan perusahaan berbentuk persekutuan perdata, persekutuan firma, dan persekutuan komanditer adalah implikasi dari keharusan mendaftarkan perusahaan berbentuk badan usaha tersebut SABU. Berdasarkan ketentuan di Permenkumham No. 17 Tahun 2018, bila sebuah persekutuan perdata, persekutuan firma, dan persekutuan komanditer sudah didaftarkan di SABU, maka nama tersebut tidak dapat lagi digunakan oleh persekutuan perdata, persekutuan firma, dan persekutuan komanditer yang akan didirikan.</p>\r\n\r\n<p>Sebelumnya, salah satu perbedaan proses dan syarat mendirikan PT dengan proses dan syarat mendirikan persekutuan perdata, persekutuan firma, dan persekutuan komanditer adalah pemilihan nama. Karena PT statusnya badan hukum, maka nama yang sudah digunakan oleh sebuah PT, otomatis akan ditolak pemakaiannnya bila ada PT lain yang mengajukan nama yang sama. Tapi sebelum berlakunya Permenkumham No. 17 Tahun 2018, hal tersebut tidak berlaku untuk persekutuan perdata, persekutuan firma, dan persekutuan komanditer.</p>\r\n\r\n<ol>\r\n	<li><strong>Pengurusan Izin Usaha Dilakukan Melalui OSS&nbsp;</strong></li>\r\n</ol>\r\n\r\n<p>Sebuah perusahaan berbentuk PT untuk bisa melakukan kegiatan usaha perdagangan misalnya, proses yang berjalan sebelum adanya OSS adalah dengan menyelesaikan proses pendiriannya mulai dari akta dan SK Kemenkumham dan selanjutnya mengurus dokumen legalitas dan perizinan usaha di tempat yang berbeda. Misalnya SKDP diurus di kelurahan, NPWP perusahaan di Kantor Pelayanan Pajak (KPP) setempat, SIUP dan TDP di kantor kecamatan atau walikota.</p>\r\n\r\n<p>Dengan adanya OSS sebagai aturan terbaru pendirian perusahaan dan izin usaha, setelah proses pendirian perusahaan berbentuk PT selesai maka proses pengajuan izin usaha dilakukan secara terintegrasi melalui portal OSS. Ditambah lagi, platform OSS ini sudah terhubung dengan sistem Administrasi Hukum Umum (AHU). Jadi, pada saat pengisian informasi di OSS, data-data yang terkait dengan pendirian PT yang ada di AHU bisa ditarik ke portal OSS.</p>\r\n', 'Senin', '2019-07-01', '10:07:31', 'aturan-terbaru-pendirian-perusahaan-dan-izin-usaha-1024x576.jpg', 18, 'gayus');
INSERT INTO `artikel` (`id_berita`, `id_kategori`, `username`, `judul`, `judul2`, `judul_seo`, `headline`, `isi_berita`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`) VALUES
(121, 2, 'admin', '', '', 'mempekerjaan-10-karyawan-wajib-membuat-peraturan-perusahaan', 'Y', '<p>Undang-undang Ketenagakerjaan sudah 14 tahun diberlakukan, namun belum semua perusahaan di Indonesia mentaati semua peraturan yang ada di dalamnya. Aturan hukum yang terkesan sepele namun menjadi kewajiban bagi perusahaan adalah Perusahaan yang mempekerjakan 10 karyawan wajib membuat Peraturan Perusahaan yang memuat sekurang-kurangnya : Hak dan Kewajiban Pengusaha, Hak dan Kewajiban Karyawan, Syarat Kerja serta &nbsp;Tata Tertib Perusahaan.</p>\r\n\r\n<p>Sanksi yang terlalu ringan serta penegakan hukum yang belum optimal menyebabkan banyaknya perusahaan yang ternyata telah mempekerjaan lebih dari 10 orang, namun tidak membuat peraturan perusahaan.</p>\r\n\r\n<p>Menurut ketentuan pasal 188 Undang-undang No.13 tahun 2003 ditentukan bahwa perusahaan yang tidak memiliki atau membuat peraturan perusahaan atau perusahaan yang tidak mempebaruhi peraturan perusahaan yang sudah ada, dipidana denda paling sedikit Rp. 5 juta dan paling banyak Rp. 50 juta.</p>\r\n\r\n<p>Ketentuan inilah yang menurut hemat penulis kurang optimal sehingga tidak banyak dipatuhi oleh perusahaan yang ada di Indonesia. Terlebih penegakan hukum atas ketentuan UU Ketenagakerjaan yang kurang Optimal.</p>\r\n\r\n<p>Dalam satu Perusahaan hanya boleh dibuat satu Peraturan Perusahaan yang berlaku bagi seluruh Karyawan yang bekerja pada perusahaan tersebut. Namun jika suatu perusahaan Perusahaan memiliki cabang, maka selain dibuat Peraturan Perusahaan induk yang berlaku bagi semua Karyawan baik di perusahaan pusat maupun perusahaan cabang. Maka Perusahaan Cabang juga dapat membuat Peraturan Perusahaan turunan yang berlaku khusus bagi Karyawan di Perusahaan Cabang tersebut sesuai dengan kondisi dan keadaan masing Perusahaan cabang tersebut. Peraturan perusahaan di cabang yang satu tidak dapat berlaku bagi karyawan di cabang yang lain.</p>\r\n\r\n<p>Sedangkan terhadap perusahaan yang tergabung dalam satu grup, dan masing-masing Perusahaan merupakan badan hukum yang berdiri sendiri-sendiri, maka Peraturan Perusahaan harus dibuat oleh masing-masing Perusahaan itu sebagai badan hukum yang berdiri sendiri-sendiri, dan tidak dapat disatukan dalam satu peraturan perusahaan group.</p>\r\n\r\n<p>Tugas, wewenang dan tanggungjawab penyusunan Peraturan Perusahaan adalah merupakan tanggung jawab dari Perusahaan, yang sebelum diajukan permohonan pendaftaran harus dimintakan saran dan pertimbangan dari wakil Karyawan terhadap draf Peraturan Perusahaan tersebut. Karena sifatnya saran dan pertimbangan, maka Karyawan atau wakil karyawan dapat juga untuk tidak memberikan saran dan pertimbangan atas draft peraturan perusahaan tersebut meskipun telah diminta oleh Perusahaan.</p>\r\n\r\n<p>Pemilihan wakil Karyawan dalam rangka memberikan saran dan pertimbangannya harus dilakukan dengan tujuan untuk mewakili kepentingan para Karyawan. Pemilihan itu dilakukan secara demokratis, yaitu dipilih oleh Karyawan sendiri terhadap Karyawan yang mewakili setiap unit kerja di dalam Perusahaan. Apabila di dalam Perusahaan telah terbentuk Serikat Pekerja, maka saran dan pertimbangan tersebut diberikan oleh pengurus Serikat Pekerja yang ada.</p>\r\n\r\n<p>Untuk mendapatkan saran dan pertimbangan terhadap rancangan atau draft peraturan perusahaan dari wakil Karyawan, maka pertama-tama Perusahaan harus menyampaikan naskah rancangan atau draft Peraturan Perusahaan itu kepada wakil Karyawan&nbsp;atau Serikat Pekerja. Saran dan pertimbangan tersebut harus sudah diterima kembali oleh Perusahaan dalam waktu 14 hari kerja sejak tanggal diterimanya naskah rancangan Peraturan Perusahaan oleh wakil Karyawan. Jika dalam waktu 14 hari kerja itu wakil Karyawan tidak memberikan saran dan pertimbangannya, maka Perusahaan sudah dapat mengajukan pengesahan Peraturan Perusahaan itu tanpa saran dan pertimbangan dari Karyawan &ndash; dengan disertai bukti bahwa Perusahaan telah meminta saran dan pertimbangan dari wakil Karyawan namun Karyawan tidak memberikan saran dan pertimbangan terhadap naskah rancangan / draft peraturan perusahaan tersebut.</p>\r\n\r\n<p>Masa berlakunya Peraturan Perusahaan paling lama adalah 2 (dua) tahun, sejak tanggal disahkan peraturan perusahaan tersebut oleh Dinas Ketenagakerjaan setempat. Dan setelah 2 (dua) tahun, maka peraturan perusahaan tersebut wajib diperbaharui kembali dan didaftarkan kembali kepada Dinas Ketenagakerjaan setempat.</p>\r\n', 'Senin', '2019-07-01', '10:12:45', 'peraturan-perusahaan.jpg', 0, 'sepakbola'),
(120, 23, 'admin', '', '', 'tanggung-jawab-pemilik-pt-atas-kerugian-perusahaan', 'Y', '<p>Yang dimaksud dengan Pemilik perusahaan di dalam sistem hukum perseroan terbatas berdasarkan ketentan Undang-undang No.40 tahun 2007 tentang Perseroan Terbatas adalah Para Pemegang saham, baik pemegang saham mayoritas maupun pemegang saham minoritas. Oleh karenanya Tanggung jawab pemilik PT atas kerugian perusahaan sudah diatur dalam hukum.</p>\r\n\r\n<p>Di dalam masyarakat kita pemilik perusahaan identik dengan penguasa dan pengambil semua kebijakan perusahaan, namun apakah memang demikian? Undang &ndash; undang Perseroan terbatas nomor : 40 tahun 2007 menyatakan bahwa sebuah perseroan terbatas mempunyai 3 organ yaitu Rapat Umum Pemegang Saham atau yang sering dikenal dengan RUPS, Direksi dan Komisaris.</p>\r\n\r\n<p>Secara hukum sebenarnya pemegang kekuasaan pengendalian perusahaan ada di Direksi yang nantinya dipertanggungjawabkan kepada Rapat Umum Pemegang Saham (RUPS), jadi bukan pemilik dalam artian pemegang saham. Memang dalam pratik ada juga Pemegang Saham yang juga menjadi direksi ataupun komisaris perusahaan, inilah yang membuat mereka seakan-akan sebagai penguasa dan penentu segala kebijakan perusahaan tersebut.</p>\r\n\r\n<p>Lantas sampai sejauh mana tanggungjawab pemilik dalam hal ini para pemegang saham terhadap perusahaan yang menimbulkan kerugian atau utang kepada pihak lain?</p>\r\n\r\n<p>Ketentuan pasal 3 Undang-undang No.40 tahun 2007 menyatakan bahwa Pemilik dalam hal ini pemegang saham perseroan tidak bertanggung jawab secara pribadi atas perikatan yang dibuat atas nama Perseroan dan tidak bertanggung jawab atas kewgian Perseroan melebihi saham yang dimiliki. Ketentuan ini seakan-akan membatasi aparat penegak hukum untuk menyentuh para pemilik perusahaan dari jeratan hukum atas tindakan mereka yang menggunakan perseroan untuk mewujudkan kepentingannya sendiri.</p>\r\n\r\n<p>Namun dalam pasal 3 ayat (2) ternyata dinyatakan bahwa ketidak bertanggungjawaban itu ada pengecualiannya, artinya para pemilik dalam hal ini para pemegang saham tetap dapat dimintai pertanggungjawabannya terhadap perusahaan yang merugikan pihak ketiga, dalam hal-hal sebagai berikut : a).persyaratan Perseroan sebagai badan hukum belum atau tidak terpenuhi; b). pemegang saham yang bersangkutan baik langsung maupun tidak langsung dengan itikad buruk memanfaatkan Perseroan untuk kepentingan pribadi; c). pemegang saham yang bersangkutan terlibat dalam perbuatan melawan hukum yang dilakukan oleh Perseroan; atau d). pemegang saham yang bersangkutan baik langsung maupun tidak langsung secara melawan hukum menggunakan kekayaan Perseroan, Yang mengakibatkan kekayaan Perseroan menjadi tidak cukup untuk melunasi utang Perseroan.</p>\r\n\r\n<p>Atas dasar ketentuan itulah maka pihak ketiga tetap dapat menuntut Para Pemilik Perusahaan sepanjang terpenuhi ketentuan pasal 3 ayat (2) Undang-undang No.40 tahun 2007 tersebut diatas.</p>\r\n', 'Senin', '2019-07-01', '10:14:10', 'pt.jpg', 6, 'film'),
(124, 0, '05144', '', '', 'peraturan-perusahaan', 'Y', '<!-- AddThis Sharing Buttons above --><!-- Quick Adsense WordPress Plugin: http://quicksense.net/ -->\r\n<p><strong>Peraturan Perusahaan adalah peraturan yang dibuat secara tertulis oleh Perusahaan, yang di dalamnya memuat syarat-syarat kerja dan tata tertib perusahaan</strong>&nbsp;(UU No. 13 Tahun 2003 tentang Ketenagakerjaan). Sebuah Peraturan Perusahaan baru dikatakan sah dan mengikat Perusahaan dan Karyawan apabila telah mendapatkan pengesahan dari Menteri Ketenagakerjaan dan Transmigrasi. Pengesahan itu dilakukan oleh pejabat yang ditunjuk, yaitu kepala instansi yang bertanggung jawab di bidang ketenagakerjaan Kabupaten/Kota (untuk perusahaan yang terdapat dalam satu Kabupaten/Kota) dan kepala instansi yang bertanggung jawab di bidang ketenagakerjaan tingkat Provinsi (untuk Perusahaan yang terdapat dalam lebih dari satu wilayah Kabupaten/Kota).</p>\r\n\r\n<p>Kewajiban membuat Peraturan Perusahaan berlaku terhadap Perusahaan yang memiliki paling sedikit&nbsp;<strong>10 orang Karyawan</strong>. Kewajiban itu tidak berlaku apabila Perusahaan telah memiliki&nbsp;<strong>Perjanjian Kerja Bersama</strong>&nbsp;(PKB), yaitu perjanjian antara Serikat Pekerja dan Perusahaan yang di dalamnya mengatur syarat-syarat kerja, serta hak dan kewajiban kedua belah pihak.</p>\r\n\r\n<p>Selain mengatur syarat-syarat kerja yang belum diatur dalam peraturan perundang-undangan, Peraturan Perusahaan juga merinci lebih lanjut ketentuan-ketentuan umum yang terdapat dalam peraturan perundang-undangan Ketenagakerjaan. Dalam hal Peraturan Perusahaan mengatur kembali (menegaskan) ketentuan peraturan perundang-undangan, maka ketentuan itu kondisinya harus lebih baik dari peraturan perundang-undangan. Peraturan Perusahaan sekurang-kurangnya memuat :</p>\r\n\r\n<ol>\r\n	<li>Hak dan kewajiban Perusahaan.</li>\r\n	<li>Hak dan kewajiban Karyawan.</li>\r\n	<li>Syarat kerja.</li>\r\n	<li>Tata tertib perusahaan.</li>\r\n	<li>&nbsp;Jangka waktu berlakunya Peraturan Perusahaan.</li>\r\n</ol>\r\n\r\n<p>Dalam satu Perusahaan hanya boleh dibuat satu Peraturan Perusahaan yang berlaku bagi seluruh Karyawan. Jika Perusahaan memiliki cabang, maka selain Peraturan Perusahaan induk yang berlaku bagi semua Karyawan, Perusahaan juga dapat membuat Peraturan Perusahaan turunan yang berlaku khusus bagi Karyawan di masing-masing cabang Perusahaan sesuai dengan kondisi masing-masing Perusahaan cabang. Dalam hal beberapa perusahaan tergabung dalam satu grup, dan masing-masing Perusahaan merupakan badan hukum yang berdiri sendiri-sendiri, maka Peraturan Perusahaan harus dibuat oleh masing-masing Perusahaan itu sebagai badan hukum.</p>\r\n\r\n<p><strong>Menyusun Draf Peraturan Perusahaan</strong></p>\r\n\r\n<p>Tugas penyusunan Peraturan Perusahaan merupakan tanggung jawab dari Perusahaan. Sebelum disahkan oleh Menteri, penyusunan itu dilakukan oleh Perusahaan dengan memperhatikan saran dan pertimbangan dari Karyawan terhadap draf Peraturan Perusahaan. Karena masukan dari Karyawan itu bersifat &ldquo;saran&rdquo; dan &ldquo;pertimbangan&rdquo;, maka pembuatan Peraturan Perusahaan tidak dapat diperselisihkan &ndash; bila terjadi perbedaan pendapat antara Karyawan dan Perusahaan. Karena sifatnya saran dan pertimbangan, maka Karyawan dapat juga untuk tidak memberikan saran dan pertimbangan tersebut meskipun telah diminta oleh Perusahaan.</p>\r\n\r\n<p>Pemilihan wakil Karyawan dalam rangka memberikan saran dan pertimbangannya harus dilakukan dengan tujuan untuk mewakili kepentingan para Karyawan. Pemilihan itu dilakukan secara demokratis, yaitu dipilih oleh Karyawan sendiri terhadap Karyawan yang mewakili setiap unit kerja di dalam Perusahaan. Apabila di dalam Perusahaan telah terbentuk Serikat Pekerja, maka saran dan pertimbangan tersebut diberikan oleh pengurus Serikat Pekerja.</p>\r\n\r\n<p>Untuk memperoleh saran dan pertimbangan dari wakil Karyawan, pertama-tama Perusahaan harus menyampaikan naskah rancangan Peraturan Perusahaan itu kepada wakil Karyawan &ndash; &nbsp;atau Serikat Pekerja. Saran dan pertimbangan tersebut harus sudah diterima kembali oleh Perusahaan dalam waktu 14 hari kerja sejak tanggal diterimanya naskah rancangan Peraturan Perusahaan oleh wakil Karyawan. Jika dalam waktu 14 hari kerja itu wakil Karyawan tidak memberikan saran dan pertimbangannya, maka Perusahaan sudah dapat mengajukan pengesahan Peraturan Perusahaan itu tanpa saran dan pertimbangan dari Karyawan &ndash; dengan disertai bukti bahwa Perusahaan telah meminta saran dan pertimbangan dari wakil Karyawan namun Karyawan tidak memberikannya.</p>\r\n\r\n<p><strong>Pengesahan Menteri&nbsp;</strong></p>\r\n\r\n<p>Permohonan pengesahan Peraturan Perusahaan diajukan kepada Menteri melalui pejabat yang ditunjuk. Pengajuan permohonan itu dilakukan dengan melengkapi:</p>\r\n\r\n<ol>\r\n	<li>Permohonan tertulis yang memuat keterangan mengenai Perusahaan.</li>\r\n	<li>&nbsp;Naskah Peraturan Perusahaan dalam rangkap 3 yang telah ditandatangani oleh Perusahaan.</li>\r\n	<li>&nbsp;Bukti telah dimintakan saran dan pertimbangan dari wakil Karyawan.</li>\r\n</ol>\r\n\r\n<p>Setelah Pejabat yang ditunjuk meneliti kelengkapan dokumen-dokumen tersebut, dan dalam naskah Peraturan Perusahaan juga tidak terdapat materi yang bertentangan dengan peraturan perundangan-undangan, selanjutnya Pejabat yang ditunjuk wajib mengesahkan Peraturan Perusahaan. Pengesahan itu dilakukan dengan menerbitkan Surat Keputusan dalam waktu paling lama 30 hari kerja sejak tanggal diterimanya permohonan pengesahan.</p>\r\n\r\n<p>Sebaliknya, Jika syarat-syarat itu tidak terpenuhi, maka Pejabat yang ditunjuk akan mengembalikan secara tertulis permohonan pengesahan Peraturan Perusahaan kepada Perusahaan yang bersangkutan dalam waktu paling lama 7 hari kerja sejak diterimanya pengajuan permohonan pengesahan. Pengembalian itu disertai dengan catatan-catatan tentang kelengkapan yang perlu diperbaiki. Perusahaan wajib menyampaikan Peraturan Perusahaan yang telah dilengkapi atau diperbaiki kepada instansi yang bertanggung jawab di bidang ketenagakerjaan dalam waktu paling lama 14&nbsp; hari sejak tanggal diterimanya pengembalian Peraturan Perusahaan. Jika Perusahaan tidak memenuhinya sesuai waktu yang telah ditentukan, maka Perusahaan dapat dinyatakan tidak mengajukan permohonan pengesahan Peraturan Perusahaan &ndash; sehingga dapat dianggap belum memiliki Peraturan Perusahaan.</p>\r\n\r\n<p><strong>Masa Berlakunya Peraturan Perusahaan</strong></p>\r\n\r\n<p>Masa berlakunya Peraturan Perusahaan paling lama adalah 2 tahun, dan setelahnya wajib diperbaharui kembali. Selama masa berlakunya peraturan perusahaan, apabila Serikat Pekerja menghendaki untuk diadakannya perundingan&nbsp;<strong>Perjanjian Kerja Bersama</strong>, maka Perusahaan wajib melayaninya. Namun jika perundingan itu tidak mencapai kesepakatan, maka Peraturan Perusahaan tetap berlaku sampai habis jangka waktunya. (<a href=\"http://legalakses.com\" target=\"_blank\"><em><strong>http://legalakses.com</strong></em></a>).</p>\r\n\r\n<p><strong>Artikel Terkait:</strong></p>\r\n\r\n<ol>\r\n	<li><a href=\"http://legalakses.com/contoh-peraturan-perusahaan/\" target=\"_blank\">Contoh Peraturan Perusahaan</a></li>\r\n	<li><a href=\"http://legalakses.com/contoh-peraturan-perusahaan/\" target=\"_blank\">Contoh-contoh Dokumen Hukum dan Surat Resmi</a></li>\r\n	<li><a href=\"http://legalakses.com/contoh-contoh-dokumen-hukum/membuat-surat-perjanjian-dadang-sukandar/\" target=\"_blank\">Cara Membuat Surat Perjanjian</a></li>\r\n	<li><a href=\"http://dadangsukandar.wordpress.com/2010/12/08/perjanjian-kerja-pkwt-pkwtt/\" target=\"_blank\">Perjanjian Kerja: PKWT dan PKWTT</a></li>\r\n	<li><a href=\"http://dadangsukandar.wordpress.com/2010/12/08/perjanjian-kerja-untuk-waktu-tertentu-pkwt/\" target=\"_blank\">Perjanjian Kerja Untuk Waktu Tertentu (PKWT)</a></li>\r\n	<li><a href=\"http://dadangsukandar.wordpress.com/2010/12/08/perjanjian-kerja-untuk-waktu-tidak-tertentu-pkwtt/\" target=\"_blank\">Perjanjian Kerja Untuk Waktu Tidak Tertentu (PKWTT)</a></li>\r\n</ol>\r\n<!-- Quick Adsense WordPress Plugin: http://quicksense.net/ -->\r\n\r\n<p>&nbsp;</p>\r\n', 'Kamis', '2019-10-03', '15:28:07', 'employes-bureauv.jpg', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(614, 2, 'admin', 'Trafic Management Surveillance', '', '', 'trafic-management-surveillance', 'N', 'N', 'Y', '', '', 'Minggu', '2021-04-24', '07:52:08', '2022-02-09_032858.jpg', 53, '', 'Y'),
(654, 5, 'admin', 'Admin Dashboard', '', '', 'admin-dashboard', 'N', 'N', 'N', '<p><span style=\"color: rgb(94, 94, 94); font-family: \"Open Sans\", sans-serif;\">Web yang kami buat sudah tersedia admin dashboard, sehingga anda mudah manage konten</span><br></p>\r\n', '', 'Minggu', '2021-04-24', '07:29:21', 'service-details-1.jpg', 28, '', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(655, 1, 'admin', 'E-coop', '', '', 'ecoop', 'N', 'N', 'N', '<p style=\"language:id;margin-top:0pt;margin-bottom:0pt;margin-left:0in;\r\ntext-align:justify;text-justify:inter-ideograph;direction:ltr;unicode-bidi:\r\nembed;mso-line-break-override:none;word-break:normal;punctuation-wrap:hanging\">Dalam kegiatan mendukung berjalannya program UKM (Usaha Kecil Menengah) di Indonesia, maka kami menghadirkan salah satu solusi kami dalam bentuk penyediaan aplikasi yang bertujuan untuk membantu para pengelola Koperasi Koperasi dalam menjalankan kegiatan bisnis Koperasi secara professional melalui sebuah dukungan software aplikasi berbasis website yang sudah dilengkapi dengan fitur Laporan Keuangan berstandar akuntansi.</p><p style=\"language:id;margin-top:0pt;margin-bottom:0pt;margin-left:0in;\r\ntext-align:justify;text-justify:inter-ideograph;direction:ltr;unicode-bidi:\r\nembed;mso-line-break-override:none;word-break:normal;punctuation-wrap:hanging\"><br></p><p style=\"language:id;margin-top:0pt;margin-bottom:0pt;margin-left:0in;\r\ntext-align:justify;text-justify:inter-ideograph;direction:ltr;unicode-bidi:\r\nembed;mso-line-break-override:none;word-break:normal;punctuation-wrap:hanging\">Saatnya koperasi Anda dikelola dengan professional melalui dukungan software aplikasi yang membuat pengelolaan koperasi Anda menjadi lebih mudah, rapi dan cepat. Smartcoop adalah Software Aplikasi dengan fitur sangat lengkap untuk mewujudkan moderinisasi koperasi di Indonesia</p><p style=\"language:id;margin-top:0pt;margin-bottom:0pt;margin-left:0in;\r\ntext-align:justify;text-justify:inter-ideograph;direction:ltr;unicode-bidi:\r\nembed;mso-line-break-override:none;word-break:normal;punctuation-wrap:hanging\"><br></p><p style=\"language:id;margin-top:0pt;margin-bottom:0pt;margin-left:0in;\r\ntext-align:justify;text-justify:inter-ideograph;direction:ltr;unicode-bidi:\r\nembed;mso-line-break-override:none;word-break:normal;punctuation-wrap:hanging\"><img src=\"data:image/png;base64,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\" alt=\"\"></p><p style=\"language:id;margin-top:0pt;margin-bottom:0pt;margin-left:0in;\r\ntext-align:justify;text-justify:inter-ideograph;direction:ltr;unicode-bidi:\r\nembed;mso-line-break-override:none;word-break:normal;punctuation-wrap:hanging\"><br></p><p style=\"language:id;margin-top:0pt;margin-bottom:0pt;margin-left:0in;\r\ntext-align:justify;text-justify:inter-ideograph;direction:ltr;unicode-bidi:\r\nembed;mso-line-break-override:none;word-break:normal;punctuation-wrap:hanging\"><img src=\"data:image/png;base64,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\" alt=\"\" style=\"width: 100%;\"><br></p>\r\n', '', 'Sabtu', '2021-04-24', '23:55:12', 'Ilustrasi-Digitalisasi-Koperasi.jpg', 31, '', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(656, 3, 'admin', 'Aplikasi Inventory Asset Dan Logistik', '', '', 'aplikasi-inventory-asset-dan-logistik', 'Y', 'Y', 'Y', '<p style=\"text-align: center; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51);\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><img src=\"https://ti.pindad.com/home/asset/images/2022-02-09_024911.jpg\" style=\"width: 815px;\"><br></p><div style=\"text-align: center;\"></div><p></p>', '', 'Jumat', '2021-04-24', '09:51:42', '2022-02-09_0013331.jpg', 32, '', 'Y'),
(659, 5, 'admin', 'Desain Responsive', '', '', 'desain-responsive', 'N', 'N', 'N', '<p><span style=\"color: rgb(94, 94, 94); font-family: \"Open Sans\", sans-serif;\">Website yang kami buat sudah Mobile friendly, yang artinya tetap bagus di akses dari PC, Smartphone, Tablet, HD TV dan screen lainnya untuk memenuhi target pasar dan acuan google mobile first indexing.</span><br></p>\r\n', '', 'Minggu', '2021-04-24', '11:14:45', 'service-details-3.jpg', 18, '', 'Y'),
(696, 6, 'admin', 'DESIGN & DEVELOPMENT', '', '', 'design--development', 'N', 'Y', 'N', '<p style=\"margin: 0.5em 0px;\"><span style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 14px;\">Dengan memanfaatkan main engine yang dikembangkan sendiri, kami berupaya untuk membuat sebuah website yang user friendly sehingga mudah dikelola termasuk oleh yang masih awam di bidang pemograman sekalipun, sesuai dengan kebutuhan dan perkembangan zaman dimana teknologi bersifat memudahkan pemakai.</span><br></p>', '', 'Sabtu', '2022-02-12', '19:08:58', 'layanan_aplikasi.png', 25, '', 'Y'),
(697, 6, 'admin', 'AFTER SALES SERVICE', '', '', 'after-sales-service', 'N', 'Y', 'N', '<p><span style=\"color: rgb(68, 68, 68); font-family: \"Open Sans\", sans-serif; font-size: 14px;\">Layanan purnajual (After Sales Service) ialah jasa layanan yang diberikan produsen kepada konsumennya setelah transaksi penjualan dilakukan, sebagai jaminan mutu untuk produk yang ditawarkannya. TI-Pindad yang dalam hal ini berperan sebagai pengembang web juga memberikan layanan purnajual kepada semua klien</span><br></p>', '', 'Sabtu', '2022-02-12', '19:35:00', 'after_service.jpg', 20, '', 'Y'),
(698, 6, 'admin', 'SPECIAL REQUEST', '', '', 'special-request', 'N', 'Y', 'N', '<p><span style=\"color: rgb(68, 68, 68); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" text-align:=\"\" center;\"=\"\">Kami memberikan kepada&nbsp; kebebasan kepada anda untuk menentukan aplikasi yang anda inginkan</span><br></p>', '', 'Sabtu', '2022-02-12', '19:43:52', '073dTaZQXRl5NQS3q4pgpEI-1__v1599035493.jpg', 26, '', 'Y'),
(660, 3, 'admin', 'Fungsi Aplikasi', '', '', 'fungsi-aplikasi', 'N', 'Y', 'N', '<p><br></p>\r\n', '', 'Minggu', '2021-04-24', '11:13:58', '2022-02-09_031920.jpg', 22, '', 'Y'),
(661, 3, 'admin', 'Tampilan Dashboard', '', '', 'tampilan-dashboard', 'N', 'Y', 'N', '<p><br></p>\r\n', '', 'Minggu', '2021-04-24', '11:13:08', '2022-02-09_020450.jpg', 21, '', 'Y'),
(662, 3, 'admin', 'Contoh Inventory', '', '', 'contoh-inventory', 'N', 'Y', 'Y', '<p><br></p>\r\n', '', 'Minggu', '2021-04-24', '11:12:16', '2022-02-09_031529.jpg', 17, '', 'Y'),
(666, 1, 'admin', 'E-Office', '', '', 'eoffice', 'N', 'N', 'Y', '<p><img src=\"https://ti.pindad.com/home/asset/images/e-office.jpg\" style=\"width: 874.406px;\"><br></p>\r\n', '', 'Sabtu', '2021-04-24', '23:53:46', 'eoffice-manfaat.jpg', 20, '', 'Y'),
(667, 5, 'admin', 'Mobile Friendly', '', '', 'mobile-friendly', 'N', 'Y', 'N', '<p><span style=\"color: rgb(68, 68, 68); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: center;\">Semua Aplikasi yang kami buat ramah seluler / Responsive</span><br></p>\r\n', '', 'Sabtu', '2021-04-24', '23:49:09', 'large_1-Main-Image.jpg', 13, '', 'Y'),
(673, 2, 'admin', 'Apa yang dibutuhkan', '', '', 'apa-yang-dibutuhkan', 'N', 'Y', 'N', '<p><br></p>\r\n', '', 'Minggu', '2021-04-24', '00:05:33', '2022-02-09_031350.jpg', 22, '', 'Y'),
(685, 2, 'admin', 'City Report Task Management', '', '', 'city-report-task-management', 'N', 'N', 'N', '<p><br></p>\r\n', '', 'Selasa', '2021-04-24', '01:30:53', '2022-02-09_031050.jpg', 29, '', 'Y'),
(689, 4, 'admin', 'Perimeter System', '', '', 'perimeter-system', 'N', 'N', 'N', '<p><br></p>\r\n', '', 'Senin', '2021-07-15', '10:17:45', '2022-02-09_032249.jpg', 21, '', 'Y'),
(690, 4, 'admin', 'Intrution Detection System', '', '', 'intrution-detection-system', 'N', 'N', 'N', '<p><br></p>\r\n', '', 'Senin', '2021-07-15', '10:19:41', '2022-02-09_032101.jpg', 32, '', 'Y'),
(691, 1, 'admin', 'Executive Information System (EIS)', '', '', 'executive-information-system-eis', 'Y', 'N', 'Y', '<p><img src=\"https://ti.pindad.com/home/asset/images/eis.jpg\" style=\"width: 874.406px;\"><br></p>', '', 'Senin', '2021-07-15', '10:24:03', 'portfolio-3.jpg', 35, 'aplikasi', 'Y'),
(692, 2, 'admin', 'ERP & Marketplace UMKM', '', '', 'erp--marketplace-umkm', 'Y', 'N', 'N', '<p style=\"text-align: center; \"><img src=\"https://ti.pindad.com/home/asset/images/2022-02-09_023820.jpg\" style=\"width: 781px;\"><br></p>\r\n', '', 'Senin', '2021-07-15', '10:25:22', '2022-02-09_023628.jpg', 25, '', 'Y'),
(693, 4, 'admin', 'Command Center', '', '', 'command-center', 'Y', 'N', 'N', '<p style=\"text-align: justify; \">Merupakan salah satu fasilitas yang\r\ndiperlukan oleh institusi/perusahaan\r\ndalam menjalankan Crisis Manegement\r\natau Business Continuity Management.</p><p style=\"text-align: justify;\">Merupakan sebuah lokasi yang lengkap\r\ndengan infrastruktur yang diperlukan,\r\nuntuk melakukan meeting, mengambil\r\nkeputusan, menugaskan,\r\nmengkoordinasi, memonitor dan\r\nmengontrol seluruh tindakan yang\r\ndiperlukan sebaga iresponter hadap\r\nkrisis yang dihadapi perusahaan,\r\nseperti: tindakan tanggap darurat&nbsp;<br></p>\r\n', '', 'Senin', '2021-07-15', '10:38:00', '2022-02-09_023134.jpg', 33, '', 'Y'),
(695, 5, 'admin', 'Beautiful websites', '', '', 'beautiful-websites', 'N', 'N', 'N', '<p><span style=\"color: rgb(68, 68, 68); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: center;\">Dengan Teknologi Informasi yang diterapkan di Perusahaan anda. Membuat Aplikasi membantu pekerjaan anda menjadi lebih mudah, cepat dan tepat</span><br></p>', '', 'Sabtu', '2022-02-12', '18:00:55', 'grafic_design.jpg', 26, '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `detail_client` varchar(100) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `detail_client`, `gambar`) VALUES
(1, 'client-1', 'client-12.png'),
(2, 'client-2', 'client-2111111.png'),
(3, 'client-3', 'client-3.png'),
(4, 'client-4', 'client-41.png'),
(5, 'kemenham kecil', 'kemenham_kecil.png'),
(6, 'logo paskhas kecil', 'logopaskhas_kecil.png'),
(7, 'logo ptpn7', 'logo-ptpn7-300x126.png'),
(8, 'pt timah', 'pttimah.png');

-- --------------------------------------------------------

--
-- Table structure for table `deskripsi`
--

CREATE TABLE `deskripsi` (
  `id` int(11) NOT NULL,
  `detail_nama` varchar(120) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `icon` varchar(120) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `bg_desk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deskripsi`
--

INSERT INTO `deskripsi` (`id`, `detail_nama`, `deskripsi`, `icon`, `warna`, `bg_desk`) VALUES
(3, 'Sistem Aplikasi', 'Menghadirkan layanan jasa pembuatan website profesional untuk membuat website, seperti company profile, eCommerce, atau blog dari web developer berpengalaman dengan harga terjangkau. Layanan ini sesuai digunakan oleh bisnis / perusahaan, perkantoran, dan pemerintahan yang ingin memiliki website dengan cepat. Solusi menyeluruh untuk bisnis Anda', 'display', '#ff689b', '#fceef3'),
(4, 'Infrastruktur TI', 'Menghadirkan layanan sumber daya teknologi meliputi investasi dalam perangkat keras, perangkat lunak, dan layanan.', 'server', '#e98e06', '#fff0da'),
(5, 'Cyber Security', 'Menghadirkan layanan dalam melakukan tindakan perlindungan yang sangat diperlukan bagi setiap pengguna internet. Demi mencegah terjadinya kejahatan di dunia maya atau cyber crime.', 'robot', '#3fcdc7', '#e6fdfc'),
(6, 'Training Cyber', 'Layanan ini berfokus untuk mengembangkan pengetahuan individu dalam bidang Keamanan Siber dan Informasi', 'shield', '#41cf2e', '#eafde7'),
(7, 'Sertifikasi', 'Kami memberikan layanan professional untuk pengelolaan sumber daya IT (informasi dan teknologi) yang dimiliki pelanggan seperti pengelolaan sumber daya manusia(pelatihan), sistem dan infrastruktur jaringan terintegrasi, keamanan sistem serta integrasi seluruh aktivitas sumber daya informasi dan teknologi meliputi perancangan, implementasi dan pengawasan serta pengamanan.', 'lightbulb', '#2282ff', '#e1eeff');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(33, 'PPT PEI', 'Denah_CCTV_Ged_181_-_Divisi_TI.pdf', '2022-02-14', 1),
(32, 'sdsd', '20210528_Paparan_PMN_TA_2015_Rakomdir_Kinerja_Bulan_Mei.pdf', '2022-02-10', 3);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `tim` varchar(120) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `nama`, `deskripsi`, `tim`, `gambar`) VALUES
(2, 'KONSULTASI', 'Memberikan penjelasan mengenai produk-produk kami, serta memberikan solusi terbaik yang dapat diterapkan di perusahaan Anda ', 'MARKETING', 'event-birthday.jpg'),
(3, 'WEB PROGRAMMER', 'Membangun aplikasi dengan platform dan teknologi terbaru', 'PROGRAMMER', 'event-private.jpg'),
(4, 'WEB PROGRAMMER', 'Mendesign arsitektur aplikasi yang menarik dengan memperhatikan UI/UX', 'Tim Kreatif', 'event-custom.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fitur`
--

CREATE TABLE `fitur` (
  `id` int(11) NOT NULL,
  `detail_nama` varchar(120) NOT NULL,
  `detail_fitur` varchar(1000) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fitur`
--

INSERT INTO `fitur` (`id`, `detail_nama`, `detail_fitur`, `gambar`) VALUES
(2, 'Dashboard Analytics', 'website perusahaan anda sudah dilengkapi dengan dasboard mengenai informasi statistik aktivitas dan perkembangan website anda. Dengan adanya dasboard ini akan memudahkan tim bisnis anda untuk memantau dan menganalisis setiap aktivitas dan pola kebiasaan pengunjung website anda, Dengan informasi ini dapat membantu anda dan tim dalam menentukan strategi dan keputusan yang relevan dan potensial bagi bisnis anda', 'image-dashboard-analytic.png'),
(3, 'Content Management', 'Untuk membangun audiens yang loyal, Anda membutuhkan konten yang bermanfaat dan relevan dengan kebutuhan audiens. Anda tidak perlu khawatir memikirkan, manajemen konten website anda, karena tim profesional kami dengan sigap akan membantu mengelola konten website bisnis Anda. Kami bisa membuat dan mempublikasi artikel dan tips yang relevan dengan bisnis anda, mengatur halaman, membuat galeri, mendesain formulir, membuat tombol download, dan manajamen konten lainnya sesuai kebutuhan bisnis Anda.', 'image-content-management.png'),
(4, 'Banner Management', 'Anda ingin menambahkan iklan banner pada website bisnis anda untuk memperoleh keuntungan dari iklan tersebut, namun tidak ingin menghalangi informasi dan konten utama dari bisnis anda ? Tim web developer kami siap membantu mengatur tata letak dan visibilitas banner iklan pada website bisnis anda agar tetap proporsional dan tertata rapi sesuai fungsi.', 'jmage-banner-management.png'),
(5, 'Expert Consulting', 'Dengan pengalaman dan keahlian yang panjang untuk memecahkan berbagai masalah yang dihadapi klien kami. Tentu tim kami ada di sini untuk siap membantu memecahkan masalah dan kesulitan yang anda hadapi terkait dengan pengembangan dan pengelolaan website bisnis anda. Kami dengan senang hati siap untuk menjadi rekan konsultasi dan diskusi anda', 'expert-consulting.png'),
(6, 'Search Engine Optimized', 'Ketika Anda memiliki website bisnis, tentu tidak ingin website anda sepi pengunjung, karena akan menghambat promosi dan branding bisnis anda. Dengan senang hati tim kami siap membantu memaksimalkan fungsi SEO (Search Engine Optimize) agar visibilitas website Anda bisa muncul di beranda utama mesin pencari dan bisa lebih mudah ditemukan oleh pengunjung.', 'seo-image.png'),
(7, 'Mobile / Responsive Site', 'Tim kami akan selalu memastikan website bisnis Anda bisa diakses dengan cepat dan mudah baik dari perangkat desktop maupun mobile. Kami menyadari dan peduli bahwa pengalaman dan kemudahan pengguna dalam mengakses website Anda merupakan hal yang penting. Dengan akses yang cepat dan mudah tentu akan mempercepat klien dan customer untuk mengakses informasi dan bertransaksi dari layanan bisnis Anda, dan tentu hal ini akan berdampak pada kepuasan dan engagement yang positif antara pelanggan dengan bisnis anda.', 'mobile-responsive-image.png'),
(8, 'Social Media', 'Sosial media saat ini merupakan platform yang paling efektif dan ideal sebagai tempat untuk promosi dan branding sebuah bisnis, termasuk bisnis Anda. Tim yang profesional dan berpengalaman kami siap membantu bisnis Anda bisa berkembang dan mendapat engagement yang positif di sosial media.', 'socmed-icons.png'),
(9, 'Secure Web Hosting', 'Setiap situs web membutuhkan rumah. Itu sebabnya kami menawarkan hosting eksklusif untuk Anda klien kami. Dengan memiliki server kami sendiri, kami dapat terus-menerus memantau dan mengontrol hosting kami, dan bisa menyelesaikan masalah apa pun yang muncul dengan segera. Hal ini tentu bisa menjaga informasi Anda dengan lebih aman.', 'secure-web-hosting.png'),
(10, 'Malware Security', 'Selalu ada baru untuk mengeksploitasi situs web yang memiliki keamanan yang lemah, Hal ini tentu berpotensi membahayakan pelanggan dan reputasi bisnis Anda. Kami dengan tim yang berpengalaman selalu memastikan bahwa situs website Anda 100% aman dan terbebas dari aktivitas yang berpotensi merusak.', 'malware-security.png'),
(11, 'Google Map Integration', 'Layanan jasa web design professional kami memungkinkan Anda bisa mengatur dan mengintegrasikan Google Map secara langsung di situs web Anda sendiri, sehingga Anda dapat dengan mudah menambahkan lokasi baru dan mengubah lokasi bisnis anda tanpa harus meninggalkan situs website Anda.', 'google-map.png'),
(12, 'Youtube Video', 'Video merupakan media yang sangat efektif untuk menjelaskan dan mengenalkan profil, produk dan layanan bisnis Anda. Kami menyediakan beberapa jenis fitur video seperti, menyediakan bagian galeri video, dan dapat mengintegrasikan video Youtube pada Website Anda, sehingga pengunjung bisa langsung menonton video tanpa perlu meninggalkan website Anda.', 'youtube-1.png'),
(13, 'Multi Languange', 'Bisnis dan organisasi Anda tentu terhubung dengan klien global. Desain website multi bahasa tentu akan memudahkan klien dan audiens dari negara lain untuk dapat membaca informasi dan berkomunikasi dengan layanan bisnis Anda. Kami merancang fitur multi bahasa yang mudah digunakan oleh semua orang. Fitur ini juga mendukung beberapa bahasa yang bisa langsung diubah sesuai kebutuhan. Kami siap membantu mengembangkan fitur multi bahasa seperti yang bisnis Anda inginkan.', 'multi-language.png');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(1, 31, 'admin', 'Paskhas', 'paskhas', '<iframe src=\"https://ti.pindad.com/inventory/asset/files/PAPARAN%20APLIKASI%20PASKHAS%20-%201311-2020.pdf\" width=\"90%\" height=\"500px\"></iframe>', 'paskhas1.jpg'),
(2, 53, 'admin', 'Dapen', 'dapen', '', 'dapen.jpg'),
(3, 51, 'admin', 'PTPN', 'ptpn', '', 'ptpn7.jpg'),
(4, 30, 'admin', 'Kemenkumham', 'kemenkumham', '', 'kemenkumham.jpg'),
(5, 29, 'admin', 'PT. Timah', 'pt-timah', '', 'timah.jpg'),
(6, 28, 'admin', 'BSSN', 'bssn', '', 'BSSN.jpg'),
(7, 54, 'admin', 'PEI', 'pei', '<p>test </p><p><br></p><p><img style=\"width: 353px;\" src=\"https://ti.pindad.com/home/asset/images/pei.png\"><br></p>\r\n', 'pei.png');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `file`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami', 'tentang-kami', '<h3 style=\"text-align: center; font-size: 26px; font-family: Roboto, sans-serif; color: rgb(68, 68, 68);\"><img src=\"https://ti.pindad.com/home/asset/images/2022-02-09_002206.jpg\" style=\"width: 954px;\"><br></h3>', '2022-02-09', 'about-image-670x378.png', 'TI%20pindad.pdf', 'admin', 149, '13:10:57', 'Senin'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">PT Pindad, sebagai industri pertahanan, mempunyai visi menjadi produsen alat pertahanan terkemuka di Asia melalui upaya inovasi produk dan kemitraan strategis. Kami memiliki sumberdaya yang memadai profesional dan terus mengembangkan kemampuan untuk menghasilkan produk berkualitas. Kami tidak pernah berhenti berinovasi untuk menghasilkan produk yang dibutuhkan oleh pengguna. Kepercayaan terhadap produk kami merupakan penghargaan atas dedikasi, loyalitas dan inovasi yang kami hasilkan secara terus menerus.</p><p><br style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\"></p><p style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Pindad akan terus mengembangkan produk dari sisi kualitas dan varian produk, baik alutsista maupun produk industrial, sebagai wujud nyata bakti untuk negeri.</p><p><br style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\"></p><p style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">Atas nama Direksi, kami persembahkan produk dalam negeri berkualitas prima. Terimakasih kepada seluruh stakeholder atas dukungan dan kepercayaan yang diberikan kepada Pindad, semoga Pindad terus maju dan berkembang.</p><p><br style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\"></p><p style=\"color: rgb(68, 68, 68); font-family: &quot;Open Sans&quot;, sans-serif;\">PT Pindad (persero) Direktur utama.</p>\r\n', '2022-02-09', '', 'TI%20pindad.pdf', 'admin', 29, '13:32:28', 'Senin'),
(57, 'Layanan', 'layanan', '<p style=\"text-align: center; \"><img src=\"https://ti.pindad.com/home/asset/images/2022-02-09_002400.jpg\" style=\"width: 1151px;\"><br></p>', '2022-02-09', '', 'TI%20pindad.pdf', 'admin', 61, '00:25:24', 'Rabu'),
(58, 'Kontak', 'kontak', '<p><img src=\"https://ti.pindad.com/home/asset/images/2022-02-09_002644.jpg\" style=\"width: 556px;\"><br></p>', '2022-02-09', '', 'TI%20pindad.pdf', 'admin', 6, '00:32:16', 'Rabu'),
(52, 'Klien Kami', 'klien-kami', '<p><br></p>', '2022-02-09', '2022-02-08_231542.jpg', 'TI%20pindad.pdf', 'admin', 5, '23:16:54', 'Selasa'),
(68, 'Layanan Aplikasi', 'layanan-aplikasi', '', '2022-02-10', '', 'TI_pindad.pdf', 'admin', 47, '23:41:47', 'Kamis'),
(72, 'arbi testing', 'arbi-testing', '<p>penjelasan produk</p><p>bisa gambar</p><p>bisa video<br></p>', '2022-02-14', '', 'RPT_18_TI_I_2022_Service_Desk_Annual_Report_2021.pdf', 'admin', 2, '14:20:08', 'Senin'),
(67, 'Integrated Communication Security System', 'integrated-communication-security-system', '', '2022-02-10', '', 'Pindad_Smart_Integrated_Security_System.pdf', 'admin', 59, '23:34:14', 'Kamis'),
(70, 'Inventory dan Logistic', 'inventory-dan-logistic', '', '2022-02-10', '', 'Pindad_Inventory_Logistic.pdf', 'admin', 22, '23:45:34', 'Kamis'),
(69, 'Smart City Concept', 'smart-city-concept', '', '2022-02-10', '', 'Pindad_Smart_City_Concept.pdf', 'admin', 39, '23:43:40', 'Kamis');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2022-02-09'),
(32, 'Header2', '', 'header1.jpg', '2022-02-09'),
(33, 'Header1', '', 'header2.jpg', '2022-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`, `lampiran`) VALUES
(39, 'Pindad', 'itmarketing@pindad.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2022-02-09', '21:56:12', 'Y', ''),
(43, 'arbi', 'arbi@pindad.com', '192.168.4.134', 'terima kasih', '2022-02-14', '14:55:23', 'Y', ''),
(44, 'arbi', 'arbi@pindad.com', '192.168.4.134', 'test kata kotor\r\n\r\nanjing', '2022-02-14', '15:00:43', 'Y', ''),
(42, '05144', 'idcardtownow@gmail.com', '192.168.252.4', 'Test', '2022-02-13', '13:05:50', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'TI Pindad Persero', 'edikartono@pindad.com', 'https://ti.pindad.com/home', 'https://www.facebook.com/ptpindad?fref=ts, \r\nhttps://twitter.com/PT_Pindad, \r\nhttps://instagram.com/pt_pindad, \r\nhttps://www.youtube.com/channel/UCLqhC4mRKpK30xDSJhnt0FA', '00000000000', '082115178663', 'Siap membantu anda untuk menghadirkan website anda online di internet melalui beberapa pilihan produk desain website kami.', 'pindad, portal, bisnis, media, online, nasional, tercepat, terpercaya', 'favicon.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.640289775226!2d107.64474991431732!3d-6.933524969795464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e66843f68ddf%3A0xdba0f13c1c9f2cd0!2sPT%20Pindad!5e0!3m2!1sid!2sid!4v1580876439544!5m2!1sid!2sid');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`, `posisi`) VALUES
(1, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_0208331.jpg', 'Home No 1', '2022-02-09_0208332.jpg', '2022-02-12', 'home'),
(2, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', 'Home No 2', '2022-02-09_034631.jpg', '2022-02-12', 'home'),
(3, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', 'Home No 3', '2022-02-09_034631.jpg', '2022-02-12', 'home'),
(4, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', '', '2022-02-09_034631.jpg', '2022-02-12', 'berita_detail'),
(5, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', '', '2022-02-09_034631.jpg', '2022-02-12', 'detail_video'),
(6, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', 'Detail Dokumen Foto', '2022-02-09_034631.jpg', '2022-02-12', 'berita_foto'),
(7, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', '', '2022-02-09_034631.jpg', '2022-02-12', 'hal_download'),
(8, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', 'detail agenda', '2022-02-09_034631.jpg', '2022-02-12', 'detail_agenda'),
(9, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', '', '2022-02-09_034631.jpg', '2022-02-12', 'hal_statis'),
(35, 'Monitoring', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_015813.jpg', '', '2022-02-09_015813.jpg', '2022-02-12', 'home_tengah'),
(36, 'Penghargaan', 'admin', 'https://www.youtube.com/watch?v=Vz9nkXzf3Oc', '', 'why-us.jpg', '2022-02-12', 'home_tengah'),
(37, 'Grafik', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_020450.jpg', '', '2022-02-09_020450.jpg', '2022-02-12', 'home_tengah'),
(38, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', '', '2022-02-09_034631.jpg', '2022-02-12', 'home_bawah'),
(39, 'ti@pindad.com', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_034631.jpg', '', '2022-02-09_034631.jpg', '2022-02-12', 'home_bawah'),
(40, 'ti@pindad.com - Selamat Datang', 'admin', 'https://ti.pindad.com/home/asset/foto_iklantengah/2022-02-09_020833.jpg', '', '2022-02-09_020833.jpg', '2022-02-12', 'home_bawah');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t'),
(9, 'anjing', 'helpdesk', 'a****g');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  `gambar_utama` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`, `gambar_utama`) VALUES
(3, 'Pindad Inventory dan Logistic', 'admin', 'pindad-inventory-dan-logistic', 'Y', 3, '2022-02-09_001333.jpg'),
(1, 'Layanan Aplikasi', 'admin', 'layanan-aplikasi', 'Y', 1, '2022-02-08_233721.jpg'),
(2, 'Pindad Smart City Concept', 'admin', 'pindad-smart-city-concept', 'Y', 2, '2022-02-09_001204.jpg'),
(4, 'Pindad Smart Integrated Security System', 'admin', 'pindad-smart-integrated-security-system', 'Y', 4, '2022-02-09_001802.jpg'),
(5, 'Home', 'admin', 'home', 'Y', 5, ''),
(6, 'Layanan', 'admin', 'layanan', 'Y', 6, '');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `akun` varchar(120) NOT NULL,
  `nomor` varchar(120) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `akun`, `nomor`, `email`) VALUES
(1, 'Rony Kurniawan', 'Accout Manager', '+6281392346530', 'rony@pindad.com'),
(2, 'Dudi Setiadi', 'Account Manager', '+6281223692414', 'd.setiadi@pindad.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 2),
(2, 'user', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logo-pindad-192x128_(1).png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(113, 0, 'Tentang Kami', 'halaman/detail/tentang-kami', 'Ya', 'Top', 1),
(112, 149, 'Smart City Concept', 'kategori/detail/pindad-smart-city-concept', 'Ya', 'Bottom', 5),
(13, 149, 'Layanan Aplikasi', 'kategori/detail/layanan-aplikasi', 'Ya', 'Bottom', 4),
(12, 149, 'Pindad Inventory & Logistic', 'kategori/detail/pindad-inventory-dan-logistic', 'Ya', 'Bottom', 6),
(116, 0, 'Hubungi Kami', 'hubungi', 'Ya', 'Top', 2),
(119, 0, 'Layanan', 'halaman/detail/layanan', 'Ya', 'Bottom', 13),
(148, 149, 'Integrated Communication Security System', 'halaman/detail/integrated-communication-security-system', 'Ya', 'Bottom', 7),
(149, 0, 'Produk', '#', 'Ya', 'Bottom', 3),
(183, 0, 'Klien', 'albums', 'Ya', 'Bottom', 15),
(170, 0, 'Katalog', '#', 'Ya', 'Bottom', 8),
(171, 170, 'Layanan Aplikasi', 'halaman/detail/layanan-aplikasi', 'Ya', 'Bottom', 9),
(172, 170, 'Smart City Concept', 'halaman/detail/smart-city-concept', 'Ya', 'Bottom', 10),
(173, 170, 'Inventory & Logistic', 'halaman/detail/inventory-dan-logistic', 'Ya', 'Bottom', 11),
(188, 170, 'Integrated Communication Security System', 'halaman/detail/integrated-communication-security-system', 'Ya', 'Bottom', 12);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br />\r\n<br />\r\n</p>\r\n\r\n<p style=\"text-align: center; \"><img src=\"https://ti.pindad.com/home/asset/images/2022-02-09_002644.jpg\" style=\"width: 1151px;\"><br></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(1, 'Kiri - Iklan Sidebar', 'admin', 'https://ti.pindad.com', '', 'banner2.jpg', '2022-02-09'),
(2, 'Kanan - Iklan Sidebar', 'admin', 'https://ti.pindad.com/home/asset/foto_pasangiklan/web-design-01.jpg', '', 'web-design-01.jpg', '2022-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(56, 'Playlist Video 1', 'admin', 'playlist-video-1', '', 'Y'),
(57, 'Playlist Video 2', 'admin', 'playlist-video-2', '', 'Y'),
(61, 'Playlist Video 4', 'admin', 'playlist-video-4', '', 'Y'),
(60, 'Playlist Video 3', 'admin', 'playlist-video-3', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Kategori apa yang anda sukai dalam web ini ?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Layanan Aplikasi', 'Jawaban', 'admin', 0, 'Y'),
(31, 'Infrastruktur', 'Jawaban', 'admin', 0, 'Y'),
(32, 'Pindad Smart City Concept', 'Jawaban', 'admin', 0, 'Y'),
(33, 'Pindad Inventory & Logistic', 'Jawaban', 'admin', 0, 'Y'),
(35, 'Pindad Smart Integrated Security System', 'Jawaban', 'admin', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `detail_nama` varchar(120) NOT NULL,
  `detail_produk` text NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `client` varchar(50) NOT NULL,
  `project_date` date NOT NULL,
  `project_url` varchar(50) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `detail_nama`, `detail_produk`, `kategori`, `client`, `project_date`, `project_url`, `gambar`) VALUES
(1, 'Surat Menyurat(e-filing/e-office)', 'Solusi yang disediakan untuk memberikan kmeudahan dalam proses pendistribusian,pengarsipan,pendisposisian surat/dokumen/naskah dinas pada masing masing perusaahan.', 'aplikasi', 'PT PINDAD', '2022-08-19', 'Pindad.com', 'efiling2.jpg'),
(2, 'Executive Information System(EIS)', 'Executive Information System(EIS) adalah sistem berbasis komputer yang interaktif,yang memungkinkan pihak eksekutif mengakses data dan informasi sehingga dapat dilakukan peng identifikasian masalah, pengeksplorasian solusi, dan menjadi dasar dalam proses perencanaan yang sifatnya strategis.', 'aplikasi', 'PT PINDAD', '2022-09-08', 'pindad.com', 'eis121.jpg'),
(6, 'Reminder Of Document Expiration(ReD-X)\r\n', 'Reminder of Document Exploration(ReD-X) merupakan sistem berbasis komputer yang dapat memberikan notifikasi atau peringatan via email apabila batas jatuh tempo suatu dokumen yang mempunyai livetime, misalkan dokumen sertifikasi produk, dokumen kalibrasi, kontrak layanan dll', 'aplikasi', 'PT PINDAD', '2022-08-19', 'Pindad.com', 'rode.jpg'),
(7, 'Jaringan Dokumentasi & Informasi Hukum', 'Meningkatkan Produktifitas dan penghematan biaya kertas dan mengurangi total biaya dokumen serta meningkatkan efisiensi ruang penyimpanan.', 'aplikasi', 'PT PINDAD', '2022-08-19', 'Pindad.com', 'jdih.jpg'),
(8, 'Inventory', 'Aplikasi berbasis website yang menyediakan fitur untuk melakukan pencatatan persediaan dan pengajuan mutasi perpindahan aset.', 'aplikasi', 'PT PINDAD', '2022-08-19', 'Pindad.com', 'iktni.jpg'),
(59, 'Pengadaan & Instalasi Server', '', 'device', 'PT PINDAD', '2022-08-19', 'pindad.com', 'pis.jpg'),
(81, 'Cyber Security', '', 'workshop', 'PT PINDAD', '2022-08-18', 'pindad.com', 'cs1.jpg'),
(93, 'Instalasi Jaringan', '', 'device', 'PT PINDAD', '2022-08-30', 'pindad.com', 'ij1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2019-05-18', 28, '1558141438'),
('::1', '2019-06-30', 2, '1561872220'),
('::1', '2019-07-01', 1, '1561950236'),
('::1', '2019-07-02', 1, '1562028708'),
('::1', '2019-07-08', 1, '1562544054'),
('::1', '2019-07-13', 1, '1562978601'),
('::1', '2019-07-14', 243, '1563094093'),
('::1', '2019-07-15', 213, '1563173043'),
('::1', '2019-07-16', 3, '1563231376'),
('::1', '2019-07-17', 9, '1563323606'),
('::1', '2019-07-18', 4, '1563407947'),
('::1', '2019-08-27', 2, '1566889548'),
('::1', '2019-11-14', 100, '1573723243'),
('::1', '2019-11-15', 1, '1573815541'),
('::1', '2019-11-16', 92, '1573912524'),
('::1', '2019-11-17', 14, '1573997167'),
('::1', '2019-11-18', 380, '1574068697'),
('::1', '2019-11-19', 12, '1574148729'),
('::1', '2019-11-20', 5, '1574240913'),
('::1', '2019-11-21', 1, '1574291940'),
('::1', '2019-11-24', 3, '1574552073'),
('::1', '2020-02-09', 3, '1581212463'),
('192.168.4.51', '2022-02-08', 85, '1644339598'),
('::1', '2022-02-08', 3, '1644332859'),
('192.168.4.51', '2022-02-09', 222, '1644387433'),
('192.168.0.252', '2022-02-09', 116, '1644424917'),
('::1', '2022-02-09', 32, '1644388175'),
('192.168.17.241', '2022-02-09', 10, '1644392940'),
('192.168.0.252', '2022-02-10', 62, '1644499621'),
('192.168.4.51', '2022-02-10', 135, '1644511661'),
('::1', '2022-02-10', 36, '1644510650'),
('192.168.196.84', '2022-02-10', 15, '1644488877'),
('192.168.17.85', '2022-02-10', 13, '1644488914'),
('192.168.4.51', '2022-02-11', 27, '1644565849'),
('192.168.0.252', '2022-02-11', 47, '1644589045'),
('::1', '2022-02-11', 59, '1644567230'),
('192.168.196.84', '2022-02-11', 1, '1644551173'),
('192.168.3.91', '2022-02-11', 4, '1644581476'),
('192.168.0.252', '2022-02-12', 126, '1644673931'),
('192.168.3.91', '2022-02-12', 5, '1644638611'),
('::1', '2022-02-12', 12, '1644677094'),
('192.168.4.51', '2022-02-12', 89, '1644680824'),
('192.168.252.4', '2022-02-12', 7, '1644679339'),
('192.168.0.252', '2022-02-13', 24, '1644758176'),
('192.168.252.4', '2022-02-13', 36, '1644732862'),
('192.168.0.252', '2022-02-14', 82, '1644854115'),
('192.168.4.51', '2022-02-14', 33, '1644825908'),
('::1', '2022-02-14', 2, '1644811393'),
('192.168.1.93', '2022-02-14', 4, '1644818686'),
('192.168.16.159', '2022-02-14', 18, '1644835127'),
('192.168.4.134', '2022-02-14', 41, '1644830010'),
('192.168.3.91', '2022-02-14', 2, '1644831099'),
('192.168.0.252', '2022-02-15', 22, '1644943375'),
('192.168.4.51', '2022-02-15', 8, '1644915851'),
('192.168.0.252', '2022-02-16', 141, '1645030664'),
('192.168.4.91', '2022-02-16', 5, '1644978268'),
('192.168.4.51', '2022-02-16', 3, '1644982500'),
('192.168.196.84', '2022-02-16', 1, '1645000777'),
('192.168.0.252', '2022-02-17', 158, '1645117167'),
('192.168.0.252', '2022-02-18', 67, '1645203287'),
('192.168.0.252', '2022-02-19', 52, '1645289696'),
('192.168.0.252', '2022-02-20', 223, '1645376178'),
('192.168.0.252', '2022-02-21', 55, '1645456335'),
('192.168.196.84', '2022-02-21', 17, '1645409644'),
('192.168.1.125', '2022-02-21', 2, '1645408039'),
('192.168.4.249', '2022-02-21', 3, '1645419179'),
('192.168.4.134', '2022-02-21', 1, '1645435381'),
('192.168.252.4', '2022-02-21', 2, '1645456851'),
('192.168.0.252', '2022-02-22', 11, '1645548919'),
('192.168.4.51', '2022-02-22', 6, '1645498371'),
('192.168.0.252', '2022-02-23', 13, '1645616412'),
('192.168.1.174', '2022-02-23', 5, '1645596785'),
('192.168.0.252', '2022-02-24', 108, '1645721377'),
('192.168.2.65', '2022-02-24', 1, '1645689089'),
('192.168.0.252', '2022-02-25', 33, '1645806587'),
('192.168.0.252', '2022-02-26', 12, '1645878320'),
('192.168.0.252', '2022-02-27', 39, '1645979433'),
('192.168.0.252', '2022-02-28', 36, '1646067021'),
('192.168.0.252', '2022-03-01', 27, '1646152533'),
('192.168.0.252', '2022-03-02', 24, '1646238733'),
('192.168.0.252', '2022-03-03', 9, '1646303445'),
('192.168.0.252', '2022-03-04', 17, '1646409706'),
('192.168.0.252', '2022-03-05', 17, '1646495451'),
('192.168.0.252', '2022-03-06', 10, '1646584742'),
('192.168.0.252', '2022-03-07', 28, '1646671991'),
('192.168.0.252', '2022-03-08', 17, '1646755777'),
('192.168.4.51', '2022-03-08', 3, '1646702662'),
('192.168.0.252', '2022-03-09', 66, '1646839406'),
('192.168.3.186', '2022-03-09', 10, '1646812752'),
('192.168.5.38', '2022-03-09', 6, '1646794396'),
('192.168.0.252', '2022-03-10', 29, '1646919953'),
('192.168.196.117', '2022-03-10', 1, '1646873832'),
('192.168.0.252', '2022-03-11', 7, '1646974871'),
('192.168.17.185', '2022-03-11', 2, '1646968929'),
('192.168.0.252', '2022-03-12', 31, '1647096764'),
('192.168.0.252', '2022-03-13', 676, '1647178784'),
('192.168.0.252', '2022-03-14', 18, '1647272597'),
('192.168.2.116', '2022-03-14', 4, '1647254319'),
('192.168.4.204', '2022-03-14', 1, '1647231187'),
('192.168.4.238', '2022-03-14', 10, '1647246832'),
('192.168.0.252', '2022-03-15', 16, '1647343727'),
('192.168.0.252', '2022-03-16', 15, '1647424087'),
('192.168.1.174', '2022-03-16', 7, '1647408055'),
('192.168.0.252', '2022-03-17', 7, '1647535751'),
('192.168.2.114', '2022-03-17', 1, '1647474931'),
('192.168.16.175', '2022-03-17', 3, '1647482844'),
('192.168.0.252', '2022-03-18', 16, '1647607026'),
('192.168.5.61', '2022-03-18', 1, '1647567927'),
('192.168.0.252', '2022-03-19', 7, '1647707092'),
('192.168.252.8', '2022-03-19', 11, '1647690615'),
('192.168.0.252', '2022-03-20', 3, '1647772925'),
('192.168.5.14', '2022-03-20', 12, '1647755479'),
('192.168.0.252', '2022-03-21', 63, '1647873747'),
('192.168.2.129', '2022-03-21', 15, '1647854921'),
('192.168.0.252', '2022-03-22', 45, '1647955860'),
('192.168.4.51', '2022-03-22', 8, '1647928619'),
('192.168.5.51', '2022-03-22', 3, '1647931395'),
('192.168.0.252', '2022-03-23', 328, '1648047111'),
('192.168.5.186', '2022-03-23', 3, '1647999494'),
('192.168.17.143', '2022-03-23', 2, '1648014531'),
('192.168.0.252', '2022-03-24', 13, '1648125466'),
('192.168.0.252', '2022-03-25', 8, '1648226971'),
('192.168.0.252', '2022-03-26', 19, '1648311943'),
('192.168.0.252', '2022-03-27', 65, '1648398329'),
('192.168.0.252', '2022-03-28', 32, '1648481880'),
('192.168.4.51', '2022-03-28', 4, '1648440163'),
('192.168.5.14', '2022-03-28', 6, '1648444787'),
('192.168.0.252', '2022-03-29', 15, '1648564578'),
('192.168.4.51', '2022-03-29', 1, '1648516970'),
('192.168.0.252', '2022-03-30', 19, '1648631425'),
('192.168.3.121', '2022-03-30', 2, '1648634515'),
('192.168.0.252', '2022-03-31', 11, '1648740625'),
('192.168.0.252', '2022-04-01', 14, '1648825491'),
('192.168.17.149', '2022-04-01', 40, '1648784066'),
('192.168.4.51', '2022-04-01', 9, '1648804623'),
('192.168.17.166', '2022-04-01', 4, '1648788115'),
('192.168.0.252', '2022-04-02', 11, '1648915054'),
('192.168.0.252', '2022-04-03', 24, '1649000019'),
('192.168.0.252', '2022-04-04', 19, '1649089250'),
('192.168.4.51', '2022-04-04', 18, '1649047416'),
('192.168.201.30', '2022-04-04', 1, '1649045982'),
('::1', '2022-04-04', 5, '1649046777'),
('192.168.0.252', '2022-04-05', 8, '1649170687'),
('192.168.4.51', '2022-04-05', 2, '1649142751'),
('::1', '2022-04-05', 1, '1649142805'),
('192.168.2.71', '2022-04-05', 1, '1649144824'),
('192.168.0.252', '2022-04-06', 17, '1649262429'),
('::1', '2022-04-06', 2, '1649210843'),
('192.168.4.51', '2022-04-06', 9, '1649229004'),
('192.168.17.123', '2022-04-06', 3, '1649229381'),
('192.168.0.252', '2022-04-07', 18, '1649342552'),
('192.168.3.229', '2022-04-07', 1, '1649321532'),
('192.168.0.252', '2022-04-08', 25, '1649436778'),
('192.168.5.14', '2022-04-08', 2, '1649387587'),
('192.168.0.252', '2022-04-09', 13, '1649518561'),
('192.168.0.252', '2022-04-10', 17, '1649602336'),
('192.168.0.252', '2022-04-11', 31, '1649692114'),
('192.168.0.252', '2022-04-12', 43, '1649779421'),
('192.168.196.168', '2022-04-12', 1, '1649726041'),
('192.168.17.199', '2022-04-12', 1, '1649752671'),
('192.168.0.252', '2022-04-13', 35, '1649861199'),
('192.168.197.71', '2022-04-13', 1, '1649810187'),
('192.168.0.252', '2022-04-14', 41, '1649953920'),
('192.168.0.252', '2022-04-15', 36, '1650041187'),
('192.168.0.252', '2022-04-16', 13, '1650126751'),
('192.168.0.252', '2022-04-17', 18, '1650210955'),
('192.168.0.252', '2022-04-18', 17, '1650298706'),
('192.168.0.252', '2022-04-19', 16, '1650383600'),
('192.168.0.252', '2022-04-20', 19, '1650463945'),
('192.168.0.252', '2022-04-21', 25, '1650559758'),
('192.168.0.252', '2022-04-22', 16, '1650629158'),
('192.168.4.51', '2022-04-22', 7, '1650611949'),
('::1', '2022-04-22', 15, '1650614560'),
('192.168.0.252', '2022-04-23', 30, '1650724520'),
('192.168.0.252', '2022-04-24', 19, '1650814967'),
('192.168.0.252', '2022-04-25', 11, '1650879216'),
('::1', '2022-04-25', 59, '1650869594'),
('192.168.4.51', '2022-04-25', 1, '1650849290'),
('192.168.196.200', '2022-04-25', 1, '1650852539'),
('192.168.0.252', '2022-04-26', 19, '1650961155'),
('::1', '2022-04-26', 3, '1650954443'),
('192.168.1.174', '2022-04-26', 1, '1650942181'),
('192.168.1.221', '2022-04-26', 1, '1650944993'),
('192.168.0.252', '2022-04-27', 24, '1651078616'),
('192.168.1.86', '2022-04-27', 8, '1651042318'),
('192.168.4.51', '2022-04-27', 3, '1651027696'),
('192.168.1.174', '2022-04-27', 4, '1651023724'),
('::1', '2022-04-27', 5, '1651038598'),
('::1', '2022-04-27', 5, '1651038598'),
('::1', '2022-04-27', 5, '1651038598'),
('::1', '2022-04-27', 5, '1651038598'),
('192.168.0.252', '2022-04-28', 25, '1651158990'),
('192.168.197.71', '2022-04-28', 1, '1651115333'),
('192.168.1.86', '2022-04-28', 1, '1651134877'),
('192.168.0.252', '2022-04-29', 28, '1651248090'),
('192.168.0.252', '2022-04-30', 23, '1651335936'),
('192.168.0.252', '2022-05-01', 35, '1651422547'),
('192.168.0.252', '2022-05-02', 19, '1651502517'),
('192.168.0.252', '2022-05-03', 18, '1651596951'),
('192.168.0.252', '2022-05-04', 18, '1651672716'),
('192.168.0.252', '2022-05-05', 13, '1651768404'),
('192.168.0.252', '2022-05-06', 14, '1651850338'),
('192.168.0.252', '2022-05-07', 26, '1651939250'),
('192.168.0.252', '2022-05-08', 17, '1652022374'),
('192.168.0.252', '2022-05-09', 25, '1652110825'),
('192.168.0.252', '2022-05-10', 20, '1652197941'),
('192.168.5.157', '2022-05-10', 1, '1652144591'),
('192.168.0.252', '2022-05-11', 27, '1652287062'),
('192.168.4.204', '2022-05-11', 1, '1652260820'),
('192.168.0.252', '2022-05-12', 40, '1652368079'),
('192.168.4.51', '2022-05-12', 3, '1652323435'),
('::1', '2022-05-12', 9, '1652325375'),
('192.168.0.252', '2022-05-13', 21, '1652457762'),
('192.168.0.252', '2022-05-14', 10, '1652543224'),
('192.168.0.252', '2022-05-15', 8, '1652622028'),
('192.168.0.252', '2022-05-16', 10, '1652703178'),
('192.168.0.252', '2022-05-17', 33, '1652806641'),
('192.168.0.252', '2022-05-18', 27, '1652890667'),
('192.168.4.51', '2022-05-18', 2, '1652842406'),
('192.168.0.252', '2022-05-19', 22, '1652939610'),
('192.168.4.51', '2022-05-19', 10, '1652946308'),
('::1', '2022-05-19', 3, '1652950939'),
('::1', '2022-05-20', 4, '1653028086'),
('::1', '2022-09-12', 3, '1662949644');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(28, 'Teknologi', '', 'teknologi', 12),
(27, 'Wireles', 'admin', 'wireles', 32),
(26, 'Server', 'admin', 'server', 42),
(34, 'Wifi', 'admin', 'wifi', 4),
(36, 'SOP', 'admin', 'sop', 16),
(37, 'Aplikasi', 'admin', 'aplikasi', 25),
(40, 'Handphone', 'admin', 'handphone', 28),
(41, 'Device', 'admin', 'device', 21),
(43, 'Jammer', 'admin', 'jammer', 9),
(49, 'Komputer', 'admin', 'komputer', 6),
(50, 'Jaringan', 'admin', 'jaringan', 3),
(51, 'Infrastruktur', 'admin', 'infrastruktur', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'Magazine Template', 'admin', 'Pindad', 'phpmu-magazine', 'N'),
(24, 'Personal Template', 'admin', 'Pindad', 'phpmu-standar', 'N'),
(26, 'TI Pindad', 'admin', 'pindad', 'ti-pindad', 'N'),
(27, 'ti-pindad2', 'admin', 'Bangti', 'ti-pindad2', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `ti_konten`
--

CREATE TABLE `ti_konten` (
  `id_berita` int(5) NOT NULL,
  `grup` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `style` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tittle` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ti_konten`
--

INSERT INTO `ti_konten` (`id_berita`, `grup`, `judul_seo`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `gambar2`, `style`, `url`, `tittle`, `dibaca`, `tag`, `status`) VALUES
(1, '', 'slider', 1, 'admin', 'TEKNOLOGI INFORMASI  <br><span>PT. PINDAD (PERSERO)</span>', 'Grab Your Own Project', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, 'active', 'Y'),
(2, '', 'slider', 1, 'admin', 'BERSAMA KAMI', 'Siap membantu anda untuk menghadirkan website anda online di internet melalui beberapa pilihan produk desain website kami.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(3, '', 'slider', 1, 'admin', 'SELAMAT DATANG', 'TI-Pindad menawarkan jasa pembuatan website berkualitas dengan fitur professional. Kami melayani pembuatan website untuk keperluan khusus bagi perusahan, organisasi, lembaga pemerintah, personal, komunitas, organisasi atau lainnya.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(5, '', 'home_row1', 1, 'admin', 'Mobile Friendly', 'Semua Aplikasi yang kami buat ramah seluler / Responsive', '', 'Y', 'N', 'Y', '', 'bx bx-devices', '', '2022-05-19', '14:51:40', 'icon-box icon-box-blue', '', '', '', '', 1, '', 'Y'),
(6, '', 'home_row1', 1, 'admin', 'Beautiful websites', 'Dengan Teknologi Informasi yang diterapkan di Perusahaan anda. Membuat Aplikasi membantu pekerjaan anda menjadi lebih mudah, cepat dan tepat', '', 'Y', 'N', 'Y', '', 'bx bx-like', '', '2022-05-19', '14:51:40', 'icon-box icon-box-cyan', '', '', '', '', 1, '', 'Y'),
(7, '', 'home_row1', 1, 'admin', 'Unlimited Request', 'TI-Pindad memberi Anda kebebasan kepada anda untuk menentukan aplikasi yang Anda inginkan ', '', 'Y', 'N', 'Y', '', 'bx bx-crown', '', '2022-05-19', '14:51:40', 'icon-box icon-box-green', '', '', '', '', 1, '', 'Y'),
(4, '', 'home_row1', 1, 'admin', 'Unique Styles', 'Menawarkan Tampilan yang cantik dan eye catching sehingga membuat user lebih dimanjakan', '', 'Y', 'N', 'Y', '', 'bx bx-diamond', '', '2022-05-19', '14:51:40', 'icon-box icon-box-blue', '', '', '', '', 1, '', 'Y'),
(8, '', 'home_row2', 1, 'admin', 'DESIGN & DEVELOPMENT', 'Dengan memanfaatkan main engine yang dikembangkan sendiri, kami berupaya untuk membuat sebuah website yang user friendly sehingga mudah dikelola termasuk oleh yang masih awam di bidang pemograman sekalipun, sesuai dengan kebutuhan dan perkembangan zaman dimana teknologi bersifat memudahkan pemakai.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'bx bx-fingerprint', '', '', '', '', 1, '', 'Y'),
(9, '', 'home_row2', 1, 'admin', 'AFTER SALES SERVICE', 'Layanan purnajual (After Sales Service) ialah jasa layanan yang diberikan produsen kepada konsumennya setelah transaksi penjualan dilakukan, sebagai jaminan mutu untuk produk yang ditawarkannya. TI-Pindad yang dalam hal ini berperan sebagai pengembang web juga memberikan layanan purnajual kepada semua klien', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'bx bx-gift', '', '', '', '', 1, '', 'Y'),
(10, '', 'home_row21', 1, 'admin', '', '', 'https://www.youtube.com/watch?v=Vz9nkXzf3Oc', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/why-us.jpg', '', '', '', '', 1, '', 'Y'),
(11, '', 'home_row31', 1, 'admin', 'TERPERCAYA DAN HANDAL', 'Produk kami siap mendukung pembangunan Nasional dibidang Teknologi Informasi.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(12, '', 'home_row3', 1, 'admin', 'Human Resources Information System', '<p class=\"font-italic\">\r\n              Sebuah aplikasi berbasis web yang mengintegrasikan seluruh data terkait personil perusahaan seperti data pribadi, cuti/lembur, shift kerja, data pengajuan ijin keluar komplek, data pengajuan surat perjalanan dinas, hingga perhitungan gaji personil.\r\n            </p>\r\n            <ul>\r\n              <li><i class=\"icofont-check\"></i> Organization Management.</li>\r\n              <li><i class=\"icofont-check\"></i> Personal Administration.</li>\r\n              <li><i class=\"icofont-check\"></i> Time Management.</li>\r\n              <li><i class=\"icofont-check\"></i> Payroll.</li>\r\n              <li><i class=\"icofont-check\"></i> Insentive.</li>\r\n              <li><i class=\"icofont-check\"></i> Employe Self Service.</li>\r\n            </ul>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/features-1.svg', '', '', '', '', 1, '', 'Y'),
(13, '', 'home_row3', 1, 'admin', 'Executive Information System', '<p class=\"font-italic\">\r\n              Executive Information System (EIS) adalah sistem berbasis komputer yang interaktif, yang memungkinkan pihak eksekutif untuk mengakses data dan informasi, sehingga dapat dilakukan pengidentifikasian masalah, pengeksplorasian solusi, dan menjadi dasar dalam proses perencanaan yang sifatnya strategis.\r\n            </p>\r\n            <p>\r\n             EIS mengintegrasikan data yang berasal dari sumber data internal maupun eksternal, kemudian melakukan transformasi data ke dalam bentuk rangkuman laporan yang berguna. Laporan ini biasanya digunakan oleh manajer dan level eksekutif untuk mengakses secara cepat laporan yang berasal dari seluruh perusahaan dan departemen, sehingga dapat diperoleh pengetahuan yang berguna bagi pihak eksekutif. Laporan ini digunakan untuk menemukan alternatif solusi permasalahan manajerial dan membuat perencanaan keputusan untuk perusahaan.\r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/features-2.svg', '', '', '', '', 1, '', 'Y'),
(14, '', 'home_row3', 1, 'admin', 'e-office', '<p>e-office adalah sebuah website internal yang digunakan untuk pencatatan surat\r\nmenyurat, mempermudah dalam distribusi surat juga pengarsipan surat di lingkungan Perusahaan\r\n\r\n.</p>\r\n            <ul>\r\n              <li><i class=\"icofont-check\"></i> Surat Internal.</li>\r\n              <li><i class=\"icofont-check\"></i> Surat Eksternal.</li>\r\n              <li><i class=\"icofont-check\"></i> Disposisi.</li>\r\n              <li><i class=\"icofont-check\"></i> Pembuatan Surat.</li>\r\n              <li><i class=\"icofont-check\"></i> Digital Signiture.</li>\r\n              <li><i class=\"icofont-check\"></i> Arsip Surat.</li>\r\n            </ul>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/features-3.svg', '', '', '', '', 1, '', 'Y'),
(15, '', 'home_row3', 1, 'admin', 'Reminders of Document Expiration', '<p class=\"font-italic\">\r\n              Aplikasi yang dapat memberikan notifikasi atau peringatan via email apabila Batas Jatuh Tempo Dokumen akan segera habis.\r\n            </p>\r\n            ', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/features-4.svg', '', '', '', '', 1, '', 'Y'),
(16, '', 'about_row1', 1, 'admin', 'Teknologi Informasi - Pindad (Persero)', '<p class=\"font-italic\">\r\n              TI-Pindad yang merupakan salah satu penyedia Jasa Pembuatan Aplikasi, TI-Pindad telah memberikan Jasa Layanan Pembuatan Aplikasi untuk berbagai macam keperluan usaha, toko online, personal, perusahaan dan lain-lain. \r\n            </p>\r\n            <p>Portofolio :</p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/about-image-670x378.png', '', '', '', '', 1, '', 'Y'),
(17, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi Inventory', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(18, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi HRIS', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(19, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi HRIS', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(20, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi Surat Menyurat (e-office)', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(21, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi Dokumen Peraturan', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(22, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi Jaringan Dokumen Informasi Hukum (JDIH)', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(23, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi Reminder Document of Expiration (Red-X)', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(24, '', 'about_row2', 1, 'admin', 'Pembuatan Aplikasi Executive Information System', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(25, '', 'about_row3', 1, 'admin', 'Sambutan Direktur Utama', '<p>PT Pindad, sebagai industri pertahanan, mempunyai visi menjadi produsen alat pertahanan terkemuka di Asia melalui upaya inovasi produk dan kemitraan strategis. Kami memiliki sumberdaya yang memadai profesional dan terus mengembangkan kemampuan untuk menghasilkan produk berkualitas. Kami tidak pernah berhenti berinovasi untuk menghasilkan produk yang dibutuhkan oleh pengguna. Kepercayaan terhadap produk kami merupakan penghargaan atas dedikasi, loyalitas dan inovasi yang kami hasilkan secara terus menerus.</p><br>\r\n\r\n<p>Pindad akan terus mengembangkan produk dari sisi kualitas dan varian produk, baik alutsista maupun produk industrial, sebagai wujud nyata bakti untuk negeri.</p>\r\n<br>\r\n<p>Atas nama Direksi, kami persembahkan produk dalam negeri berkualitas prima. Terimakasih kepada seluruh stakeholder atas dukungan dan kepercayaan yang diberikan kepada Pindad, semoga Pindad terus maju dan berkembang.</p>\r\n<br>\r\n<p>PT Pindad (persero)\r\nDirektur utama.</p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/ceo.png', '', '', '', '', 1, '', 'Y'),
(26, '', 'about_row41', 1, 'admin', 'Team Kami', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', '', '', '', '', '', 1, '', 'Y'),
(27, '', 'about_row4', 1, 'admin', '<h3>Marketing</h3>\r\n            <h4>Konsultasi</h4>', 'Memberikan penjelasan mengenai paket website & produk-produk lainnya, serta memberikan solusi terbaik.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/a3.jpg', '', '', '', '', 1, '', 'Y'),
(28, '', 'about_row4', 1, 'admin', '<h3>Programer</h3>\r\n            <h4>Web Programer</h4>', 'Memberikan penjelasan mengenai paket website & produk-produk lainnya, serta memberikan solusi terbaik.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/a4.jpg', '', '', '', '', 1, '', 'Y'),
(29, '', 'about_row4', 1, 'admin', '<h3>Tim Kreatif</h3>\r\n            <h4>Web Programer</h4>', 'Mendesain pola web yang menarik, memperhatikan estetika keindahan desain website.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/a1a.jpg', '', '', '', '', 1, '', 'Y'),
(30, '', 'about_row4', 1, 'admin', '<h3>Customer Service</h3>\r\n            <h4>Kontak Kami</h4>', 'Silahkan hubungi kami untuk pemesanan website ataupun produk lainnya.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/a2.jpg', '', '', '', '', 1, '', 'Y'),
(31, '', 'services_row1', 1, 'admin', 'Admin Dashboard', 'Web yang kami buat sudah tersedia admin dashboard, sehingga anda mudah manage konten', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/service-details-1.jpg', '', '', '', '', 1, '', 'Y'),
(32, '', 'services_row1', 1, 'admin', 'Desain Responsive', 'Website yang kami buat sudah Mobile friendly, yang artinya tetap bagus di akses dari PC, Smartphone, Tablet, HD TV dan screen lainnya untuk memenuhi target pasar dan acuan google mobile first indexing', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/service-details-3.jpg', '', '', '', '', 1, '', 'Y'),
(33, '', 'services_row1', 1, 'admin', 'Form & Maps', 'Website anda sudah dilengkapi dengan kontak form & maps, pengunjung bisa menghubungi anda langsung melalui website atau berkungjung ke lokasi anda.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/service-details-2.jpg', '', '', '', '', 1, '', 'Y'),
(34, '', 'services_row1', 1, 'admin', 'Profesional Email', 'Anda akan mendapatkan email profesional dengan domain anda sendiri, sehingga membuat company anda lebih terpercaya.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/service-details-4.jpg', '', '', '', '', 1, '', 'Y'),
(35, '', 'services_row1', 1, 'admin', 'Security', 'Website anda sudah dilindungi SSL sehingga aman dari hacker, malware dan spamming. Jaminan keamanan yang kami berikan selalu bagian utama.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/security.jpg', '', '', '', '', 1, '', 'Y'),
(36, '', 'services_row1', 1, 'admin', 'Support', 'Kami memberikan support selama 24x7 penuh untuk masalah urgent dan prioritas. Karena kenyamanan pelanggan kami prioritaskan.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/support.jpg', '', '', '', '', 1, '', 'Y'),
(37, 'filter-app', 'produk_row1', 1, 'admin', 'Surat Menyurat (e-filing/e-office)', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/2020-03-11-101142-241x108.png', 'assets/img/portfolio/WhatsApp Image 2020-12-01 at 21.02.38.jpeg', '', 'detail_prod_eoffice.php', 'e-office', 1, '', 'Y'),
(42, 'filter-device', 'produk_row1', 1, 'admin', 'Pengadaan & Instalasi Server', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-7.jpg', 'assets/img/portfolio/portfolio-7.jpg', '', '', 'Device', 1, '', 'Y'),
(38, 'filter-app', 'produk_row1', 1, 'admin', 'Executive Information System', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-3.jpg', 'assets/img/portfolio/portfolio-3.jpg', '', 'detail_prod_eis.php', 'EIS', 1, '', 'Y'),
(41, 'filter-app', 'produk_row1', 1, 'admin', 'Inventory', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-6.jpg', 'assets/img/portfolio/WhatsApp Image 2020-12-01 at 21.02.38(3).jpeg', '', 'detail_prod_inventory.php', 'Inventory', 1, '', 'Y'),
(39, 'filter-app', 'produk_row1', 1, 'admin', 'Reminder of Document Expiration', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-4.jpg', 'assets/img/portfolio/portfolio-4.jpg', '', 'detail_prod_redx.php', 'Red-x', 1, '', 'Y'),
(40, 'filter-app', 'produk_row1', 1, 'admin', 'Jaringan Dokumentasi Informasi', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-5.jpg', 'assets/img/portfolio/WhatsApp Image 2020-12-01 at 21.02.38(5).jpeg', '', 'detail_prod_jdih.php', 'JDIH', 1, '', 'Y'),
(43, 'filter-office', 'produk_row1', 1, 'admin', 'Cyber Security', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-8.jpg', 'assets/img/portfolio/portfolio-8.jpg', '', '', 'Cyber Security', 1, '', 'Y'),
(44, 'filter-device', 'produk_row1', 1, 'admin', 'Instalasi Jaringan', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-9.jpg', 'assets/img/portfolio/portfolio-9.jpg', '', '', 'Instalasi Jaringan', 1, '', 'Y'),
(45, 'hris', 'detail_produk_hris_row1', 1, 'admin', 'HUMAN RESOURCE INFORMATION SYSTEM', '<p>Sebuah aplikasi berbasis web yang mengintegrasikan seluruh data terkait personil perusahaan seperti data pribadi, cuti/lembur, shift kerja, data pengajuan ijin keluar komplek, data pengajuan surat perjalanan dinas, hingga perhitungan gaji personil.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/what-is-hris-725x405.png', '', '', '', '', 1, '', 'Y'),
(46, 'hris', 'detail_produk_hris_row2', 1, 'admin', 'Produktifitas', '<p>\r\n              Organisir perusahaan Anda dengan lebih baik, tingkatkan produktivitas karyawan dan pertumbuhan perusahaan Anda—semua hanya dengan satu kumpulan aplikasi.\r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/produkti.jpg', '', '', '', '', 1, '', 'Y'),
(47, 'hris', 'detail_produk_hris_row3', 1, 'admin', 'Kemudahan', '<p>\r\n              Ucapkan selamat tinggal pada kekacauan kertas yang konvensional, dan ucapkan selamat datang pada manajemen efisien, hanya dengan menggunakan satu rangkai alat-alat yang terintegrasi dengan satu sama lain untuk membantu meningkatkan produktivitas dan kepraktisan. \r\n            </p>\r\n            <p>\r\n             Serahkan kebutuhan administratif Anda pada proses-proses otomatis dan biarkan karyawan Anda fokus pada tugas-tugas yang lebih penting yang akan membantu perusahaan Anda tumbuh secara eksponensial.\r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/happy-easy-work.jpg', '', '', '', '', 1, '', 'Y'),
(48, 'hris', 'detail_produk_hris_row4', 1, 'admin', 'Organization Management', 'Dapatkan Pengelolaan Manajemen Organisasi seperti level manajemen, job description, skill matrix dan lain sebagainya.', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-home\"></i>', '', '', '', '', 1, '', 'Y'),
(49, 'hris', 'detail_produk_hris_row4', 1, 'admin', 'Personal Administration', 'Melakukan Administasi Personalia Secara Menyeluruh. Mulai Dari Data Personal, Keluarga, Pendidikan, Pengalaman Kerja, Skill, Nomor Rekening Hingga Fasilitas Karyawan Semua Tersimpan Lengkap Di Program Kami.', '', 'Y', 'N', 'Y', '', 'cyan', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-user\"></i>', '', '', '', '', 1, '', 'Y'),
(50, 'hris', 'detail_produk_hris_row4', 1, 'admin', 'Time Management', 'Melakukan Pengelolaan Jadwal Kerja Yang Dapat Disesuaikan dan mengelola data absensi secara terintegrasi. Nikmati Absensi, Pengajuan dan approval ijin dan cuti secara online tanpa harus repot lagi', '', 'Y', 'N', 'Y', '', 'green', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-time\"></i>', '', '', '', '', 1, '', 'Y'),
(51, 'hris', 'detail_produk_hris_row4', 1, 'admin', 'Payroll', 'Daftarkan Formula Penggajian Sesuai Dengan Kebutuhan Anda Dan Nikmati Proses Payroll Secara Cepat Dan Akurat. Dapatkan Juga Perhitungan PPh Pasal 21 Sesuai Dengan Ketentuan Yang Berlaku', '', 'Y', 'N', 'Y', '', 'blue', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-dollar\"></i>', '', '', '', '', 1, '', 'Y'),
(52, 'hris', 'detail_produk_hris_row4', 1, 'admin', 'Insentive', 'Melakukan Perhitungan Bonus dan THR (Tunjangan Hari Raya) Sesuai Dengan Kebijakan Perusahaan. Dapatkan Pengelolaan Bonus & THR Tak Terbatas', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-donate-heart\"></i>', '', '', '', '', 1, '', 'Y'),
(53, 'hris', 'detail_produk_hris_row4', 1, 'admin', 'Employe Self Service', 'Adalah Fitur Yang Memberikan Akses Kepada Karyawan Anda Untuk Mengakses Aplikasi HRIS Melalui Web Browser Ataupun Mobile Apps Untuk melihat dan melakukan perubahan data.', '', 'Y', 'N', 'Y', '', 'cyan', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-donate-heart\"></i>', '', '', '', '', 1, '', 'Y'),
(54, 'office', 'detail_produk_hris_row1', 1, 'admin', 'Aplikasi Surat Menyurat (e-office)', '<p>Aplikasi e-office adalah sebuah website yang digunakan untuk pencatatan surat\r\nmenyurat, mempermudah dalam distribusi surat juga pengarsipan surat di lingkungan Perusahaan.\r\n</p>', '', 'Y', 'N', 'Y', '', 'cyan', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/WhatsApp Image 2020-12-01 at 21.02.38.jpeg', '', '', '', '', 1, '', 'Y'),
(55, 'office', 'detail_produk_hris_row2', 1, 'admin', 'Produktifitas', '<p>\r\n              Organisir perusahaan Anda dengan lebih baik, tingkatkan produktivitas karyawan dan pertumbuhan perusahaan dengan kemudahan, kecepatan penyampaian informasi surat menyurat.\r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/produkti.jpg', '', '', '', '', 1, '', 'Y'),
(56, 'office', 'detail_produk_hris_row3', 1, 'admin', 'Kemudahan', '<p>\r\n              Ucapkan selamat tinggal pada kekacauan kertas yang konvensional, dan ucapkan selamat datang pada manajemen efisien, hanya dengan menggunakan satu rangkai alat-alat yang terintegrasi dengan satu sama lain untuk membantu meningkatkan produktivitas dan kepraktisan. \r\n            </p>\r\n            <p>\r\n             Serahkan kebutuhan administratif Anda pada proses-proses otomatis dan biarkan karyawan Anda fokus pada tugas-tugas yang lebih penting yang akan membantu perusahaan Anda tumbuh secara eksponensial.\r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/happy-easy-work.jpg', '', '', '', '', 1, '', 'Y'),
(57, 'office', 'detail_produk_hris_row4', 1, 'admin', 'Surat Internal', 'Dapatkan pengelolaan dan distribusi surat dinas secara elektronik antar stakeholder di internal perusahaan secara cepat dan efisien dengan notifikasi langsung pada aplikasi ataupun email.', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-send\"></i>', '', '', '', '', 1, '', 'Y'),
(58, 'office', 'detail_produk_hris_row4', 1, 'admin', 'Surat Eksternal', 'Dapatkan pengelolaan dan distribusi surat dinas secara elektronik antar stakeholder di eksternal perusahaan secara cepat dan efisien dengan notifikasi langsung pada email.', '', 'Y', 'N', 'Y', '', 'cyan', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-send\"></i>', '', '', '', '', 1, '', 'Y'),
(59, 'office', 'detail_produk_hris_row4', 1, 'admin', 'Disposisi', 'Melakukan disposisi surat berjenjang mulai dari top manajemen sampai kepada low manajemen.', '', 'Y', 'N', 'Y', '', 'green', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-notepad\"></i>', '', '', '', '', 1, '', 'Y'),
(60, 'office', 'detail_produk_hris_row4', 1, 'admin', 'Pembuatan Surat', 'Aplikasi ini mempunyai fitur pembuatan surat secara online dengan disediakan form surat dengan dukungan editor microsoft office.', '', 'Y', 'N', 'Y', '', 'blue', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-dollar\"></i>', '', '', '', '', 1, '', 'Y'),
(61, 'office', 'detail_produk_hris_row4', 1, 'admin', 'Digital Signiture', 'Aplikasi ini didukung dengan ketersediaan digital signature sehingga tidak perlu lagi melakukan approve secara manual.', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-edit\"></i>', '', '', '', '', 1, '', 'Y'),
(62, 'eis', 'detail_produk_hris_row1', 1, 'admin', 'Executive Information System (EIS)', '<p>Executive Information System (EIS) adalah sistem berbasis komputer yang interaktif, yang memungkinkan pihak eksekutif untuk mengakses data dan informasi, sehingga dapat dilakukan pengidentifikasian masalah, pengeksplorasian solusi, dan menjadi dasar dalam proses perencanaan yang sifatnya strategis.', '', 'Y', 'N', 'Y', '', 'green', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/portfolio-3.jpg', '', '', '', '', 1, '', 'Y'),
(63, 'jdih', 'detail_produk_hris_row1', 1, 'admin', 'JARINGAN DOKUMEN INFORMASI (JDI)', '<p>Aplikasi JDIH dapat membantu penambahan produktivitas pekerja dimana pekerja dapat mengakses dan beraksi dengan informasi Dokumen yang lebih cepat dan tepat.', '', 'Y', 'N', 'Y', '', 'cyan', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/WhatsApp Image 2020-12-01 at 21.02.38(5).jpeg', '', '', '', '', 1, '', 'Y'),
(64, 'eis', 'detail_produk_hris_row2', 1, 'admin', 'Produktifitas', '<p>\r\n              Organisir perusahaan Anda dengan lebih baik, tingkatkan produktivitas karyawan dengan dipermudah oleh kemampuan system yang secara otomatis memberikan notifikasi mengenai dokumen yang mendekati due date dari waktu lifetime nya.\r\n\r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/produkti.jpg', '', '', '', '', 1, '', 'Y'),
(65, 'eis', 'detail_produk_hris_row3', 1, 'admin', 'Kemudahan', '<p>\r\n              Laporan ini biasanya digunakan oleh manajer dan level eksekutif untuk mengakses secara cepat laporan yang berasal dari seluruh perusahaan dan departemen, sehingga dapat diperoleh pengetahuan yang berguna bagi pihak eksekutif. Laporan ini digunakan untuk menemukan alternatif solusi permasalahan manajerial dan membuat perencanaan keputusan untuk perusahaan. \r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/happy-easy-work.jpg', '', '', '', '', 1, '', 'Y'),
(66, 'eis', 'detail_produk_hris_row4', 1, 'admin', 'Human Resource', 'Dapatkan kemudahan pihak eksekutif dalam mengakses  informasi data dan informasi dalam bentuk grafik dan data tabel yang berkaitan dengan Human Resource (HR) seperti Strata, Jabatan, Tingkat Pendidikan, Jenis Kelamin dll.', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-group\"></i>', '', '', '', '', 1, '', 'Y'),
(67, 'eis', 'detail_produk_hris_row4', 1, 'admin', 'Finance', 'Dapatkan kemudahan pihak eksekutif dalam mengakses  informasi data dan informasi dalam bentuk grafik dan data tabel yang berkaitan dengan Keuangan (Finance) seperti Perputaran Persediaan, Perputaran Total Aset dll.', '', 'Y', 'N', 'Y', '', 'cyan', '', '2022-05-19', '14:51:40', '<i class=\"bx bx-dollar\"></i>', '', '', '', '', 1, '', 'Y'),
(68, 'jdih', 'detail_produk_hris_row2', 1, 'admin', 'Produktifitas', '<p>\r\n              Dengan menyimpan dokumen secara digital, gangguan rayap jelas akan dinihilkan 100%. Gangguan yang lain seperti kebakaran dapat diminimalisasi dengan sistem penyimpanan yang lebih canggih daripada sekedar dokumen kertas konvensional.\r\n\r\n            </p>', '', 'Y', 'N', 'Y', '', 'green', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/produkti.jpg', '', '', '', '', 1, '', 'Y'),
(69, 'jdih', 'detail_produk_hris_row3', 1, 'admin', 'Kemudahan', '<p>\r\n              Meningkatkan produktivitas dan penghematan biaya kertas dan mengurangi total biaya dokumen serta meningkatkan efisiensi ruang penyimpanan. \r\n            </p>', '', 'Y', 'N', 'Y', '', 'blue', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/happy-easy-work.jpg', '', '', '', '', 1, '', 'Y'),
(70, 'inventory', 'detail_produk_hris_row1', 1, 'admin', 'ASET & INVENTORY MANAGEMENT', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/inventory1.jpg', '', '', '', '', 1, '', 'Y'),
(76, 'inventory', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/inventory3.jpg', '', '', '', '', 1, '', 'Y'),
(77, 'inventory', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/inventory4.jpg', '', '', '', '', 1, '', 'Y'),
(78, 'inventory', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/inventory5.jpg', '', '', '', '', 1, '', 'Y'),
(72, 'redx', 'detail_produk_hris_row1', 1, 'admin', 'REMINDER OF DOCUMENT EXPIRATION (RED-X)', '<p>Reminder Of Document Expiration (RED-X) adalah sistem berbasis komputer yang dapat memberikan notifikasi atau peringatan via email apabila batas jatuh tempo suatu dokumen yang mempunyai livetime, misalkan Dokumen Sertifikasi produk, Dokumen kalibrasi, Kontrak layanan dll.', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/WhatsApp Image 2020-12-01 at 21.02.38(4).jpeg', '', '', '', '', 1, '', 'Y'),
(73, 'redx', 'detail_produk_hris_row2', 1, 'admin', 'Produktifitas', '<p>\r\n              Organisir perusahaan Anda dengan lebih baik, tingkatkan produktivitas karyawan dengan dipermudah oleh kemampuan system yang secara otomatis memberikan notifikasi mengenai dokumen yang mendekati due date dari waktu lifetime nya.\r\n\r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/produkti.jpg', '', '', '', '', 1, '', 'Y'),
(74, 'redx', 'detail_produk_hris_row3', 1, 'admin', 'Kemudahan', '<p>\r\n              Mempermudah dalam monitoring dokumen dimana diserahkan kepada system sehingga  petugas tidak perlu selalu memonitor dokumen apa saja yang akan habis masa berlakunya. \r\n            </p>', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/happy-easy-work.jpg', '', '', '', '', 1, '', 'Y'),
(75, 'inventory', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/inventory2.jpg', '', '', '', '', 1, '', 'Y'),
(79, 'inventory', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/inventory6.jpg', '', '', '', '', 1, '', 'Y'),
(80, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS1.jpg', '', '', '', '', 1, '', 'Y'),
(81, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS2.jpg', '', '', '', '', 1, '', 'Y'),
(82, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS3.jpg', '', '', '', '', 1, '', 'Y'),
(83, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS4.jpg', '', '', '', '', 1, '', 'Y'),
(84, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS5.jpg', '', '', '', '', 1, '', 'Y'),
(85, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS6.jpg', '', '', '', '', 1, '', 'Y'),
(86, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS7.jpg', '', '', '', '', 1, '', 'Y'),
(87, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS8.jpg', '', '', '', '', 1, '', 'Y'),
(88, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS9.jpg', '', '', '', '', 1, '', 'Y'),
(89, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS10.jpg', '', '', '', '', 1, '', 'Y'),
(90, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS11.jpg', '', '', '', '', 1, '', 'Y'),
(91, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS12.jpg', '', '', '', '', 1, '', 'Y'),
(92, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS13.jpg', '', '', '', '', 1, '', 'Y'),
(93, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS14.jpg', '', '', '', '', 1, '', 'Y'),
(94, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS15.jpg', '', '', '', '', 1, '', 'Y'),
(95, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS16.jpg', '', '', '', '', 1, '', 'Y'),
(96, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS17.jpg', '', '', '', '', 1, '', 'Y'),
(97, 'panicbutton', 'detail_produk_hris_row1', 1, 'admin', '', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/SISS18.jpg', '', '', '', '', 1, '', 'Y'),
(98, 'security', 'detail_produk_hris_row1', 1, 'admin', 'CYBER SECURITY (WORKSHOP)', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/CS1.png', '', '', '', '', 1, '', 'Y'),
(99, 'awareness', 'detail_produk_hris_row1', 1, 'admin', 'CYBER SECURITY (WORKSHOP)', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/CS2.png', '', '', '', '', 1, '', 'Y'),
(100, 'network', 'detail_produk_hris_row1', 1, 'admin', 'NETWORKING', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/jarkom cover.png', '', '', '', '', 1, '', 'Y'),
(101, 'server', 'detail_produk_hris_row1', 1, 'admin', 'SERVER', '', '', 'Y', 'N', 'Y', '', 'pink', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/server.jpg', '', '', '', '', 1, '', 'Y'),
(102, 'filter-eks', 'klien_row1', 1, 'admin', 'PT Perkebunan Nusantara 7', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/logo-ptpn7-300x126.png', '', 'width: 300px;margin: 20px;', '', '', 1, '', 'Y'),
(103, 'filter-eks', 'klien_row1', 1, 'admin', 'Paskhas', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/logopaskhas_kecil.png', '', 'width: 180px;margin-top: 10px;', '', '', 1, '', 'Y'),
(104, 'filter-eks', 'klien_row1', 1, 'admin', 'Kemenkumham', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/kemenham_kecil.png', '', 'width: 160px;margin-top: 10px;background: white;', '', '', 1, '', 'Y'),
(105, 'filter-eks', 'klien_row1', 1, 'admin', 'PT. Timah', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/pttimah.png', '', 'width: 182px;margin-top: 10px;', '', '', 1, '', 'Y'),
(108, 'filter-int', 'klien_row1', 1, 'admin', 'Pindad Enjiniring Indonesia', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/pei-pindad-641x260.png', '', 'width: 300px;margin-top: 40px;', '', '', 1, '', 'Y'),
(106, 'filter-eks', 'klien_row1', 1, 'admin', 'BSSN', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/bssn.png', '', 'width: 259px;margin-top: 10px;', '', '', 1, '', 'Y'),
(107, 'filter-int', 'klien_row1', 1, 'admin', 'Dapen Pindad', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/Pengumuman_Dapen.jpg', '', 'width: 161px;margin-top: 10px;', '', '', 1, '', 'Y'),
(109, 'filter-int', 'klien_row1', 1, 'admin', 'Pindad International Logistic', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/pil-pindad-653x235.png', '', 'width: 300px;margin-top: 40px;', '', '', 1, '', 'Y'),
(110, 'filter-int', 'klien_row1', 1, 'admin', 'RSU Pindad', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/logo-rs-pindad-267x60.png', '', 'width: 300px;margin-top: 50px;', '', '', 1, '', 'Y'),
(111, 'filter-int', 'klien_row1', 1, 'admin', 'Yayasan Cakra Binangkit', '', '', 'Y', 'N', 'Y', '', '', '', '2022-05-19', '14:51:40', 'assets/img/portfolio/logoycbtmini-150x148.png', '', 'width: 180px;', '', '', 1, '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'edbd881f1ee2f76ba0bd70fd184f87711be991a0401fd07ccd4b199665f00761afc91731d8d8ba6cbb188b2ed5bfb465b9f3d30231eb0430b9f90fe91d136648', 'Admin', 'edikartono@pindad.com', '082115178663', 'Admin.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('helpdesk', '2ee3f5635794336c625696b4ad0b3b4885262f6ad95871dd041475dd31889fe4e38b6d8c58cc18f9e3ec8b8802f29be5b2424407424c0e04003407e35efaf11f', 'Helpdesk TI Pindad', 'helpdesk@pindad.com', '2650', 'Helpdesk_Div__Teknologi_Informasi.png', 'admin', 'N', '288682ec5f2450588bb37a4523d11616-20220214145012'),
('user', 'fb925ba8e42e5a94b850df213bd61a51955a68bc39412e3c8490093a1fa6397cfaca457168f6322f26fa8aee770673d038b2d7ed28b3e618e76b4d9f0e94ccb6', 'Admin', 'reminder@pindad.com', '0227312073', 'Admin1.png', 'user', 'N', 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18),
(15, 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854', 70),
(16, 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854', 44),
(17, 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854', 43),
(18, 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854', 35),
(19, 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854', 34),
(20, 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854', 31),
(21, 'ee11cbb19052e40b07aac0ca060c23ee-20220209081854', 18);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deskripsi`
--
ALTER TABLE `deskripsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fitur`
--
ALTER TABLE `fitur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `ti_konten`
--
ALTER TABLE `ti_konten`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deskripsi`
--
ALTER TABLE `deskripsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fitur`
--
ALTER TABLE `fitur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ti_konten`
--
ALTER TABLE `ti_konten`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
