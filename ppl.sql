-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2017 at 01:26 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE `diskusi` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'proses',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diskusi`
--

INSERT INTO `diskusi` (`id`, `judul`, `isi`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(1, '5 Cara Menangkap Ikan Secara Tradisional Yang Unik', 'Siapa yang tak kenal ikan. Semua orang pasti menyukainya, kecuali saya. Tapi saya hanya tidak suka ikan laut, soalnya amisnya itu bikin mual di perut.\r\n\r\nNah ngomong-ngomong soal ikan, kali ini saya akan berbagi tentang cara menangkap ikan. Jadi jangan hanya tau makannya saja, cara dapetinnya juga dong. Pasti ada yang ngejawab, ‘Cuman dapetin ikan mah gampang, pigi aja ke pasar. Dengan umpan kertas warna ijo juga udah dapat ikannya’. Kalo itu sih beli namanya ya. Tapi tulisan kali ini beneran ngebahas tentang cara dapetin ikan dari habitatnya.\r\n\r\nKalo biasanya orang nyari ikan dengan cara mancing, menjala, dan pasang bubu. Bahkan ada juga yang pake bom dan racun. Padahal kan gak boleh, bisa ngerusak lingkungan dan bikin ikannya makin lama makin abis. Namun saya tidak akan membahas cara mencari ikan seperti di atas. Tapi cara dapetin ikan secara tradisional, ramah lingkungan, dan pastinya kece abis. Karena lain dari yang lain. Mana tau kan suatu saat kita terdampar di antah berantah, bisa jadi teknik-teknik mencari berikut bisa menjadi bekal survival kita. Langsung aja nih cara dapetin ikan yang unik dan nyentrik yang kesemuanya saya temui sendiri selama hidup saya.\r\n\r\n1.    Mengeringkan Sungai\r\n\r\nKetika membaca namanya pasti kebayang, ‘Gimana caranya sungai dikeringin?’ Ya emang, kalo sungainya bisa kering pasti ikannya tinggal diambilin aja. Tapi kan luar biasa mustahilnya cuman nyarik ikan ampek ngeringin sungai segala.\r\n\r\nSebenernya saya juga gak tau apa ama teknik mencari ikannya. Jadi saya kasih nama aja ‘mengeringkan sungai’. Gimana saya bisa kasih nama itu? Gini critanya. Ketika dulu saya tinggal di Banyuwangi, ada seorang lelaki tinggal di pinggiran hutan jati yang pandai banget cari ikan. Anehnya dia gak pake modal, paling cuma bawa sabit. Ternyata setiap sore ketika matahari udah tenggelam dia membendung aliran sungai dan mengalihkan alirannya ke sisi bantaran yang rata dan banyak batunya. Sehingga tidak ada satupun ikan yang lewat di aliran utama sungai, ikan-ikan akan lewat bantaran tadi yang sudah ada airnya. Di bantaran tadi juga di beri bendungan, cuman di bagian tengahnya diberi celah sekitar setengah meter untuk lewat ikan. Nah ketika menjelang subuh, ika ikan di sungai biasanya akan kembali ke persembunyian. Pada saat itulah dia menutup semua lubang ke arah bantaran dan membuka kembali aliran utama sungai. Dan… terjebaklah ikan-ikan di bantaran yang berbatu tadi. \r\n\r\n\r\nGambaran cara mengeringkan sungai\r\n\r\n\r\nSudah saya buktikan. Hasilnya banyak lo. Tergantung populasi ikannya juga.\r\n\r\n2.    Gogo\r\n\r\nMenggogo (baca ‘o’ seperti ‘bakso’) adalah cara paling tradisional dalam mencari ikan. Yaitu langsung dengan menggunakan kedua tangan. Mula-mula ikan digiring menuju tepian sungai yang banyak rerumputannya. Setelah itu langsung deh dengan cekatan kedua tangan kita menyergap sasaran. Terlihat simple, tapi ini adalah cara menangkap ikan paling sulit. Biasanya sebelum digogoin, airnya akan dibuat keruh terlebih dahulu agar ikan berpindah kepinggiran.\r\n           \r\n3.    Jenu\r\n\r\nJenu adalah tanaman merambat yang tumbuh liar di hutan. Saya menjumpainya di hutan-hutan Sumatera khususnya Aceh, karena saya sekarang tinggal di Aceh. Jadi kurang tau di tempat lain, nama Jenu juga sebutan dari penduduk setempat. Dalam mencari ikan, tanaman ini digunakan sebagai racun. Namun tenang, racunnya tidak merusak lingkungan. Ikan yang teracunpun tidak semua mati, kebanyakan hanya pingsan. Batang Jenu ditumbuk dan disebarkan ke perairan yan akan diambil ikannya. Dalam beberapa menit ikan-ikan akan terlihat ke permukaan dan siap untuk dipanen.\r\n\r\n4.    Mecok\r\n\r\nMecok adalah mencari ikan dengan menggunakan panah kecil. Kata mecok sebutan dari daerah Aceh untuk menangkap ikan dengan teknik ini.  ‘Senjata rakitan’ ini dibuat dari kayu yang dipasang karet sebagai pelontarnya. Sedangkan pelurunya biasanya dari jeruji sepeda bekas. Orang yang menggunakannya harus menyelam untuk menembak sasarannya.\r\n\r\n5.    Jegog\r\n\r\nMenjegok (‘o’ dibaca spt ‘kerok’) adalah mencari ikan dengan pancing. Namun joran pancingnya tidak dipegang dan ditungguin. Joran yang terbuat dari bilah-bilah bambu ukuran satu meter dan benang yang tidak terlalu panjang ditancapkan di tepi-tepi rawa atau sungai dan dibiarkan beberapa lama. Biasanya satu malam. Satu orang pemancing dalam satu malam setidaknya memasang lebih dari lima ratus pancing. Teknik ini banyak saya temui di daerah Palopo, Sulawesi Selatan yang merpakan tanah kelahiran saya. Karena di sana banyak daerah rawa. Bahkan desa kami sering kebanjiran dari luapan sungai Rongrong.\r\n\r\n\r\nDemikian ulasan tentang cara mencari ikan secara tradisional yang relative unik. Sampai sekarang juga masih digunakan, terutama di daerah-daerah pedesaan yang masih banyak ikannya. Semoga bermanfaat. Jangan lupa tinggalkan komentar yang bermanfaat.', 1, 'terverifikasi', NULL, NULL),
(2, 'Cara Membuat Pelet Untuk Pakan Ikan', 'Mengingat harga pakan yang kian hari kian melambung, membuat pakan ikan sendiri merupakan solusi terbaik bagi peternak, dan hal ini sering kali menjadi pertanyaan bagi para pembudidaya ikan.\r\nPakan ikan yang diproduksi dari bahan baku lokal, biasanya akan menghasilkan kualitas produk yang lebih bagus dibandingkan pakan dengan bahan baku impor. Bahan baku lokal yang dapat digunakan untuk pembuatan pakan ikan antara lain jagung, tepung ikan, dedak padi atau gandung, bungkil kedelai, minyak ikan, minyak sawit, mineral serta asam amino. Yang terpenting bahan tersebut mengandung protein, bernutrisi tinggi, mudah diolah dan dihaluskan, tidak mengandung racun, serta mudah diperoleh di daerah tersebut.\r\ncara membuat pelet ikan\r\nAgar pakan yang diproduksi, mencukupi nutrisi yang dibutuhkan setiap ikan. Maka para produsen meramu pakan untuk masing – masing ikan, dengan komposisi yang berbeda disesuaikan dengan jenis ikan.\r\nSebagai gambaran berikut kami berikan informasi 5 garis besar pembuatan pelet ikan, yang dikutip dari Majalah Ide Bisnis edisi 04/September 2010.\r\nMasing – masing bahan (bahan baku utama dapat menggunakan ikan) dihaluskan dengan bantuan mesin hammer mill\r\nSetelah itu, bahan yang telah dihaluskan kemudian diayak\r\nBahan yang sudah jadi tepung kemudian ditakar sesuai komposisi masing – masing, dan dicampur dalam mesin mixer\r\nSupaya aroma pakan mucul,bahan baku dikukus dalam peranti steam\r\nSelanjutnya dicetak menjadi butiran pelet, menggunakan mesin cetak pelet\r\nDan terakhir proses pendinginan, yaitu dengan cara mengeringkan pelet menggunakan alat blower.\r\n(sumber: komunitas lele sangkuriang)', 1, 'terverifikasi', NULL, NULL),
(3, '10 Ikan Hias Termahal di Indonesia', 'Jika anda pecinta ikan hias, mungkin anda ingin mengetahui fakta ikan hias apa yang termahal di Indonesia dan terpopuler dipelihara. Memang jenis hewan ini menjadi pilihan utama bagi sebagian orang untuk dipelihara. Disamping menjadi investasi yang baik, perawatannya juga tidak rumit seperti binatang lainnya asalkan kita cukup serius memberikan perhatian.\r\n\r\nBerikut inilah daftar 10 besarnya, seperti burung kicau, parameternya untuk menyatakan mahal dan tidaknya tergantung oleh beberapa faktor seperti jenis ikan, ukuran, faktor kebutuhan pasar dan lainnya.\r\n\r\n \r\n\r\n10. Ikan Neon Tetra\r\n\r\nMakanan Ikan Neon TetraDikenal dengan nama latin, Paracheirodon innesi, ikan ini berasal dari daerah Amerika Latin seperti Peru, Kolombia dan Brazil. Karena memiliki warna biru terang dibagian punggung dan putih perak di bagian abdomen, ikan ini sering dijadikan ikan hias. Harga ikan ini bervariasi sesuai ukurannya. Untuk ukuran 0.8 cm (usia 40 hari) dijual dengan harga Rp. 150 perekor.\r\n\r\n \r\n\r\n9. Ikan Angel\r\n\r\nCara Pembiakan Ikan AngelDikenal dengan nama Angelfish atau Pterophyllum Sclare, ikan ini termasuk ikan hias karena bentuknya yang pipih dan mulutnya tajam. Ikan ini sangat mudah dipeliharra karena makananya mudah didapat seperti jentik nyamuk atau pelet. Harga ikan ini berkisar Rp. 3.500 untuk ukuran sekitar 3 cm.\r\n\r\n \r\n\r\n8. Ikan Guppy\r\n\r\nGambar Jenis Ikan Guppy TermahalDikenal dengan nama ikan seribu atau ikan cere, ikan hias ini hidup di air tawar dan suka memakan jentik nyamuk sampai 100 jentik sehari sehingga dianggap dapat menumpas penyakit demam berdarah. Harga ikan ini sangat murah, berkisar Rp. 2.500 sampai Rp.10 ribu perekor.\r\n\r\n \r\n\r\n7. Ikan Cupang Crowntail\r\n\r\nGambar Ikan Cupang CrowntailTermasuk jenis ikan cupang yang diperlombakan untuk kontes keindahan, ikan ini memiliki sirip yang unik seperti berbentuk kipas atau layar yang sobek. Di Indonesia, ikan ini dikenal dengan nama cupang serit. Harga ikan ini bervariasi dimulai dengan harga Rp. 15.000.\r\n\r\n \r\n\r\n6. Ikan Mas Koki\r\n\r\nPenyakit Ikan Mas Koki dan Cara MengatasinyaDikenal sebagai ikan hias yang hidup di air laut, ikan ini memiliki keunikan di sisiknya yang berwarna emas dengan bentuk mata yang besar dan melotot. Karena amat rawan pada kandungan ammonia, ikan ini membutuhkan perhatian yang sangat besar terutama pemenuhan kebutuhan gelembung udara dan makanan. Nilai jualnya mencapai Rp. 20.000 perekor.\r\n\r\nBaca Juga:  Istri Tukang Ngomel Bikin Suami Rentan Serangan Jantung\r\n \r\n\r\n5. Ikan Discus\r\n\r\nHarga Jual Ikan Discus 2014Berasal dari lembah Sungai Amazon, ikan air tawar ini banyak dipelihara sebagai ikan hias di akuarium di Asia karena bentuknya yang indah dan warna sisiknya yang bagus. Variannya terbagi dalam 3 warna: hijau, coklat dan biru. Untuk ukuran 3 inchi, ikan ini berharga Rp. 75.000 sampai Rp.100.000.\r\n\r\n \r\n\r\n4. Ikan Oscar\r\n\r\nPakan untuk Ikan Oscar BatikKarena mempunyai bentuk dan warna yang menarik, kuning kemerahmerahan, ikan ini populer dikembangbiakkan di Indonesia dan terdapat berbagai jenis varietas karena perkawinan silang. Ikan ini sebaiknya hidup sendiri di aquarium karena tidak ramah dengan ikan lain. Harga ikan ini bervariasi antara Rp. 100.000 sampai Rp. 250.000.\r\n\r\n \r\n\r\n3. Ikan Koi\r\n\r\nGambar Ikan Koi JepangBerasal dari negeri China dan dikenal dengan nama ikan karper, ikan hias ini merupakan kerabat dekat ikan mas dan dianggap pembawa keberuntungan. Untuk memelihara ikan Koi menjadi ikan yang cantik dan sehat termasuk punya nilai jual yang tinggi, ada 3 faktor yang diperhatikan yaitu bibit ikan, makanan dan kualitas air untuk pemeliharaan. Terdapat 24 varietas ikan ini di seluruh dunia. Harga untuk Koi Jepang berkisar Rp. 5 juta – 7 juta untuk ukuran 30-40 cm.\r\n\r\n \r\n\r\n2. Ikan Lou Han\r\n\r\nDikenal dengan nama Flowerhorn (Bahasa Inggris), ikan hias ini terkenal karena indahnya warna sisik dan adanya benjolan kelam di bagian kepalanya. Tiga jenis Ikan Lou Han yang ada di Indonesia adalah Golden Base, Cecu dan SRD. Makanan ikan ini dapat berupa makan kering dan beku seperti cacing daran, udang Prawn dan pelet. Harganya bisa mencapai Rp. 40 juta perekor.\r\n\r\n \r\n\r\n1. Ikan Arwana\r\n\r\nDikenal dengan nama Siluk Merah atau Ikan Naga, ikan hias air tawar ini dapat ditemukan di kawasan negara-negara di Asia Tenggara. Disamping keindahan sisiknya, ikan ini mempunyai daya tahan fisik yang kuat. Karena populasinya terancam punah, ikan ini mempunyai harga jual yang cukup tinggi. Dikabarkan Ikan Arwana jenis Super Red Albino terjual dengan harga Rp. 1 Milyar pada Indonesia Pets Plants Aquatic Expo (IPPAE) tahun 2010.', 1, 'terverifikasi', NULL, NULL),
(4, 'GARAM IKAN - Fungsi dan Kegunaannya', 'Benda berupa kristal berwarna putih ini sudah sangat lama dikenal oleh para akuaris. Keberadaannya bukan merupakan hal yang asing, bahkan boleh dikatakan kehadiran benda ini seolah sudah menjadi bagian terintegrasi dengan hobi ikan hias. Garam yang dimaksud adalah garam NaCl, yaitu garam seperti yang kita kenal pada umumnya sebagai garam dapur dalam kehidupan sehari-hari. Rupa dan rasanya sama. Perbedaan utama antara garam ikan dengan garam dapur atau garam meja adalah pada kemurniannya. Garam ikan diharapkan hanya mengandung NaCl saja, karena kehadiran bahan lain pada garam ini dikhawatirkan akan mempunyai dampak yang tidak diinginkan pada ikan yang bersangkutan. Sedangkan garam dapur sering telah mengalami pengkayaan dengan berbagai bahan lain yang diperlukan oleh manusia, seperti Iodium, atau bahan lainnya. Oleh karena itu sering kali secara umum disebutkan bahwa garam yang digunakan untuk ikan adalah garam tidak beriodium. Iodium sendiri tentu saja diperlukan oleh ikan, akan tetapi kehadiran bahan lain yang tidak diketahui dengan pastilah yang menimbulkan kekhawatiran akan menyebabkan dampak yang tidak diinginkan. Apabila tidak terlalu mendesak maka penggunaan garam yang memang sudah dikhususkan untuk ikan akan lebih aman. Meskipun demikian banyak dilaporkan bahwa penggunaan garam beriodiumpun tidak menyebabkan dampak merugikan pada ikan-ikan yang diberi perlakuan tersebut. \r\n\r\nFungsi Garam\r\nIkan , dalam hal ini ikan air tawar, di dalam air ibarat sekantung garam. Ikan harus selalu menjaga dirinya agar garam tersebut tidak melarut, atau lolos kedalam air. Apabila hal ini terjadi maka ikan yang bersangkutan akan mengalami masalah. Secara umum kulit ikan merupakan lapisan kedap, sehingga garam didalam tubuhya tidak mudah “bocor” kedalam air. Satu-satunya bagian ikan yang berinteraksi dengan air adalah insang. \r\n\r\nAir secara terus menerus masuk kedalam tubuh ikan melalui insang. Proses ini secara pasif berlangsung melalui suatu proses osmosis yaitu, terjadi sebagai akibat dari kadar garam dalam tubuh ikan yang lebih tinggi dibandingkan dengan lingkungannya. Sebaliknya garam akan cenderung keluar. Dalam keadaan normal proses ini berlangsung secara seimbang. Peristiwa pengaturan proses osmosis dalam tubuh ikan ini dikenal dengan sebutan osmoregulasi. Tujuan utama osmoregulasi adalah untuk mengontrol konsentrasi larutan dalam tubuh ikan. Apabila ikan tidak mampu mengontrol proses osmosis yang terjadi, ikan yang bersangkutan akan mati., karena akan terjadi ketidak seimbangan konsentrasi larutan tubuh, yang akan berada diluar batas toleransinya.\r\n\r\nPada saat ikan sakit, luka, atau stress proses osmosis akan terganggu sehingga air akan lebih banyak masuk kedalam tubuh ikan, dan garam lebih banyak keluar dari tubuh, akibatnya beban kerja ginjal ikan untuk memompa air keluar dari dalam tubuhnya meningkat. Bila hal ini terus berlangsung, bisa sampai menyebabkan ginjal menjadi rusak (gagal ginjal) sehingga ikan tersebut tewas. Selain itu, hal ini juga akan diperparah oleh luka dan atau penyakitnya itu sendiri. Dalam keadaan normal ikan mampu memompa keluar air kurang lebih 1/3 dari berat total tubuhnya setiap hari. Penambahan garam kedalam air diharapkan dapat membantu menjaga ketidak seimbangan ini, sehingga ikan dapat tetap bertahan hidup dan mempunyai kesempatan untuk memulihkan dirinya dari luka, atau penyakitnya. Tentu saja dosisnya harus diatur sedemikan rupa sehingga kadar garamnya tidak lebih tinggi dari pada kadar garam dalam darah ikan. Apabila kadar garam dalam air lebih tinggi dari kadar garam darah, efek sebaliknya akan terjadi, air akan keluar dari tubuh ikan, dan garam masuk kedalam darah, akibatnya ikan menjadi terdehidrasi dan akhirnya mati.\r\n\r\nPada kadar yang tinggi garam sendiri dapat berfungsi untuk mematikan penyakit terutama yang diakibatkan oleh jamur dan bakteri. Meskipun demikian lama pemberiannya harus diperhatikan dengan seksama agar jangan sampai ikan mengalami dehidrasi. \r\n\r\nBeberapa Keunggulan Garam Ikan\r\nPemberian garam termasuk aman bagi ikan, asal diberikan dengan dosis yang sesuai. Selain itu juga aman bagi manusia. \r\nSeperti disebutkan sebelumnya, garam akan membantu menyeimbangkan kembali proses osmoregulasi dan memicu daya tahan tubuh ikan terhadap penyakit yang dideritanya.\r\nSampai tahap tertentu diketahui garam mampu memblokir efek nitrit. Nitrit dalam air dapat terserap kedalam system peredaran darah ikan, sehingga darah berubah menjadi kecoklatan. Kehadiran nitrit akan menyebabkan kemampuannya untuk membawa oksigen menjadi menurun, sehingga pada kondisi kelebihan nitrit sering terjadi “penyakit darah coklat”. Dengan adanya garam kejadian demikian bisa dihindari.\r\nGaram mampu membunuh parasit-parasit bersel tunggal seperti Ich (white spot), jamur dan bakteri lainnya. Terakhir garam mudah didapat dan mudah dibeli, sehingga bisa tersedia setiap saat pada waktu diperlukan.\r\n\r\n\r\nDosis dan Cara Pemberian\r\nGaram sudah lama digunakan sebagai antiseptik pada akuarium, selain itu juga kerap digunakan sebagai anti jamur (fungisida). Meskipun demikian akhir-akhir ini penggunaan garam sebagai fungisida relatif jarang dilakukan karena banyaknya anti jamur lain yang telah dibuat khusus untuk ikan.\r\n\r\nBeberapa dosis penggunaan garam adalah:\r\n\r\nSebagai profilaktik:\r\nSebagai profilaktik, atau sebagai tonik, atau dalam bahasa umum sebagai “jamu” dianjurkan untuk menggunakan garam sebanyak 1 – 2 sendok teh garam per 4 liter air, atau sebanyak 1 – 2 gram per liter. Atau dengan kata lain sebanyak 0.1 – 0.2 persen. Sebelumnya garam disiapkan di suatu wadah. Kemudian dibuat larutan dalam wadah tersebut sesuai dengan dosis. Setelah garam melarut baru dimasukan kedalam akuarium. Dosis sebagai “jamu” ini digunakan apabila kita belum tahu persis penyakit apa yang sebenarnya menjangkiti ikan, atau bisa juga digunakan apabila ikan terluka, stress dan sejenisnya. Dengan demikian sistem osmoregulasi ikan tetap prima sehingga ikan mudah melakukan pemulihan.\r\n\r\nSebagai perlakuan pengobatan infeksi jamur dan atau bakteri\r\nUntuk keperluan ini diperlukan larutan garam dengan konsentrasi 1 %, atau larutan 10 g garam dan 1 liter air. Pemberian larutan ini hendaknya diberikan secara sedikit demi sedikit sehingga konsentrasi tersebut akan tercapai setelah 24 – 48 jam. Jadi jangan diberikan sekaligus sebanyak 1 %, tapi diberikan secara perlahan-lahan. Hal ini dilakukan untuk menghindari terjadinya kejutan osmotic, atau stress pada ikan yang bersangkutan. \r\n\r\nPada awalnya konsentrasi larutan dapat dimulai pada tingkat 0.1 – 0.2 %. Kemudian secara teratur garam ditambahkan pada selang waktu tertentu, misalnya setiap 3-4 jam sekali. Apabila pada saat peningkatan konsentrasi garam ini ikan mengalami stress, hentikan segera perlakuan, kemudian ganti air sebagian sehingga konsentrasi garam turun ketingkat semula.\r\n\r\nUntuk mengurangi pengaruh racun dari nitrit.\r\nUntuk mengurangi pengaruh nitrit dosis yang dianjurkan adalah 1 gram perliter air.\r\n\r\nUntuk melepaskan lintah pada ikan\r\nDapat dilakukan dengan merendam ikan yang bersangkutan secara singkat dalam larutan garam 2.5 %. Perendaman pada dosis demikian akan menyebabkan lintah melepaskan diri dari tubuh ikan. Meskipun demikian larutan ini tidak akan membunuh lintah itu sendiri.\r\n\r\nSebagai obat infeksi Piscinoodinium (Velvet).\r\nPengobatan terhadap infeksi Piscinoodinium dapat dilakukan dengan perendaman jangka panjang dalam larutan garam dengan konsentrasi 10 gram per 45 liter air. Atau 1 sendok teh per 4 liter air. \r\n\r\nPerhitungan\r\nUntuk memberikan perlakuan garam yang tepat pertama kali harus diketahui volume air dari akuarium yang akan diberi perlakuan. Sebagai contoh apabila anda mempunyai akuarium dengan ukuran 100 cm x 50 cm x 50 cm tapi diisi air setinggai 40 cm saja, maka volume airnya adalah 100 x 50 x 40 cm3 = 2.000.000 cm3 atau sama dengan 200 liter air atau sama dengan 200 kg.\r\nApabila dosis garam yang diperlukan adalah 1 % maka garam yang diperlukan adalah 1 % (0.01) x 200 kg = 2 kg . Sedangkan bila dosis garam yang diperlukan adalah 0.1 % maka yang diperlukan adalah 0.1 % (0.001) x 200 kg = 0.2 kg atau kurang lebih 2 ons atau 200 gram.\r\n\r\nPerlu diperhatikan bahwa tidak semua ikan air tawar tahan terhadap pemberian garam. Oleh karena itu, sebelum melakukan perlakuan pemberian garam, yakinlah terlebih dahulu bahwa ikan yang dipelihara bukan termasuk ikan yang peka terhadap garam.\r\n\r\nSumber : O-FISH', 2, 'terverifikasi', '2017-10-25 02:48:38', '2017-11-05 19:33:07'),
(5, 'MENGENAL TRANSPLANTASI TERUMBU KARANG', '<p><strong>Transplantasi&nbsp;Terumbu&nbsp;Karang&nbsp;</strong>merupakan salah satu upaya rehabilitasi&nbsp;terumbu&nbsp;karang&nbsp;yang semakin terdegradasi melalui pencangkokan atau pemotongan&nbsp;karang&nbsp;hidup yang selanjutnya ditanam di tempat lain yang mengalami kerusakan atau menciptakan habitat baru. Teknik ini semakin populer baik di pihak pemerintah (KKP-red) maupun di kalangan masyarakat.</p>\r\n\r\n<p>Transplantasi&nbsp;karang&nbsp;dapat dilakukan untuk berbagai tujuan yaitu : (1). Untuk pemulihan kembali&nbsp;terumbu&nbsp;karang&nbsp;yang telah rusak; (2).Untuk pemanfaatan&nbsp;terumbu&nbsp;karangsecara lestari (perdagangan&nbsp;karang&nbsp;hias); (3).Untuk perluasan&nbsp;Terumbu&nbsp;Karang; (4). Untuk tujuan pariwisata;(5). Untuk meningkatkan kepedulian masyarakat akan statusterumbu&nbsp;karang; (6). Untuk tujuan perikanan; (7).&nbsp;Terumbu&nbsp;karang&nbsp;buatan; (8.) Untuk tujuan penelitian. Tercatat hampir seluruh dinas perikanan kota maupun provinsi di Indonesia yang memiliki kawasan&nbsp;terumbu&nbsp;karang&nbsp;dan mulai rusak mempunyai program rehabilitasi&nbsp;karang&nbsp;melalui teknik transplantasi&nbsp;karang.</p>\r\n\r\n<p>Seiring dengan perjalanan di lapangan, telah muncul beberapa persepsi yang cenderung salah kaprah mengenai teknik transplantasi&nbsp;karang&nbsp;tersebut. Program rehabilitasi yang tidak didukung dengan sosialisasi mengenai pentingnya&nbsp;terumbu&nbsp;karang&nbsp;membuat program rehabilitasi ini diartikan sebagai salah satu cara yang paling efektif atau bahkan sebagai satu-satunya cara yang efektif untuk merehabilitasi&nbsp;karang. Sehingga teknik ini menjadi populer dan muncul persepsi di masyarakat bahwa jika&nbsp;terumbukarang&nbsp;mulai rusak maka saatnya dilakukan transplantasi&nbsp;karang. Beberapa kasus terjadi ketika nelayan sadar bahwa tangkapan ikan karangnya mulai menurun, dan mereka menganggap bahwa transplantasi&nbsp;karang&nbsp;dapat mengembalikan stok ikan&nbsp;karang&nbsp;dengan cepat. Di sisi lain praktik perikanan yang tidak lestari masih terus berlangsung. Padahal kegiatan tersebut merupakan faktor utama yang menyebabkan kerusakan&nbsp;karang&nbsp;yang pada akhirnya stok ikan&nbsp;karang&nbsp;pun menurun. Sehingga usaha-usaha perlindungan kawasan menjadi pilihan yang tidak populer dan menurut mereka cenderung merugikan karena adanya pembatasan mengenai penggunaan alat tangkap maupun pembatasan fishing ground.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="869884Terumbu Karang1" src="http://www.portal.bpppbanyuwangi.com/images/artikel_ilmiah/869884Terumbu_Karang1.jpg" style="margin-left:auto; margin-right:auto" /></p>\r\n\r\n<p><em>Gambar 1. Transplantasi Terumbu Karang</em></p>\r\n\r\n<p><em>&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Pemulihan Terumbu Karang yang Telah Rusak.</strong></p>\r\n\r\n<p>Transplantasi karang dengan tujuan pemulihan terumbu karang yang telah rusak dilakukan dengan memindahkan potongan karang hidup dari terumbu karang yang kondisinya masih baik ke lokasi terumbu karang telah rusak. Teknik dan prosedurnya sebagai berikut: (1) Lokasi pengambilan bibit di sekitar terumbu karang yang telah rusak (tidak boleh jauh dari lokasi penanaman) dengan kondisi terumbu karang yang masih baik. (2) Antara lokasi pengambilan bibit dengan lokasi terumbu karang yang telah rusak mempunyai kondisi lingkungan (kedalaman dan keadaan arus) yang mirip. (3) Pengambilan bibit dilakukan dengan memotong cabang karang induk di tempat, dan tidak melakukan pemotongan koloni karang induk yang letaknya saling berdekatan untuk menghindari kerusakan ekosistem secara menyolok. (4) Transportasi bibit dari lokasi pengambilan bibit dengan lokasi transplantasi tidak lebih dari satu jam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2.&nbsp;Pemanfaatan Terumbu Karang Secara Lestari (Perdagangan Karang Hias)</strong>.</p>\r\n\r\n<p>Transplantasi untuk tujuan perdagangan karang hias, dilakukan dengan memindahkan potongan jenis-jenis karang hias yang diperdagangkan ke substrat buatan yang diletakkan di sekitar habitat terumbu karang alami, yang nantinya akan menjadi induk karang hias yang akan diperdagangkan. Teknik dan prosedurnya sebagai berikut: (1) Dilakukan oleh pengusaha karang hias yang telah mempunyai izin sebagai eksportir karang hias. (2) Jenis-jenis karang hias yang dibiakkan adalah jenis-jenis karang hias yang diperdagangkan untuk pembuatan aquarium dan tidak diperdagangkan sebagai karang mati. (3) Jumlah bibit karang hias yang akan ditanam sebagai induk karang hias sesuai dengan kuota yang telah memperoleh persetujuan dari MA. (4) Pengusaha melaporkan kepada MA tentang waktu kapan penanaman dimulai, lokasi pembiakan, jumlah, dan jenis karang hias yang akan ditanam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Perluasan Terumbu Karang</strong></p>\r\n\r\n<p>Transplantasi terumbu karang dengan tujuan perluasan terumbu karang merupakan suatu usaha untuk membuat habitat terumbu karang baru atau merubah habiat lain di luar habitat terumbu karang menjadi habitat terumbu karang.</p>\r\n\r\n<p>Persyaratan teknik dan prosedur pengambilan bibit dan tempat pengambilan bibit sama dengan persyaratan pada transplantasi terumbu karang untuk tujuan pemulihan terumbu karang yang rusak.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Tujuan Pariwisata</strong></p>\r\n\r\n<p>Transplantasi karang untuk tujuan wisata dibedakan dari transplantasi karang untuk tujuan perluasan terumbu karang. Tujuannya adalah untuk membuat habitat terumbu karang yang&nbsp;tinggi keanekaragaman hayatinya. Atau membuat panorama yang indah didasar laut seperti halnya di ekosistem terumbu karang.&nbsp;Untuk itu&nbsp;bibit&nbsp;karang yang akan dipindahkan harus terdiri dari jenis-jenis karang yang beraneka ragam bentuk dan warnanya.</p>\r\n\r\n<p>Substrat dasar buatan harus menggambarkan bentuk dasar yang menarik dan tahan terhadap arus dan air laut. Selain itu, juga harus&nbsp;dibuat&nbsp;peta lokasi trasplantasi karang menurut kelompok atau jenis karang dan kedalamannya. Peta ini sangat berguna bagi para wisatawan maupun kelompok pelestarian terumbu karang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. Membangun Kesadaran Masyarakat</strong></p>\r\n\r\n<p>Transplantasi karang dengan tujuan membangun kesadaran masyarakat dilakukan oleh masyarakat pesisir yang sudah menyadari dampak negatif akibat kerusakan terumbu karang. Kegiatan pelatihan teknik transplantasi karang, cara penentuan lokasi pembibitan, cara pengambilan bibit dari induknya, cara pengangkutan bibit, cara penempelan bibit pada substratnya, dan selanjutnya cara pemeliharaannya dilaksanakan secara konsisten kepada masyarakat pesisir. Dengan menjaga keutuhan hasil transplantasi terumbu karang, masyarakat nelayan akan dapat merasakan hasilnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. Pengelolaan Perikanan</strong></p>\r\n\r\n<p>Transplantasi karang dengan tujuan meningkatkan produksi perikanan sering disebut<em>&ldquo;Fish Aggregation Device&rdquo; (FAD),</em>&nbsp;yaitu suatu cara yang digunakan untuk mengubah suatu perairan yang sepi ikan menjadi perairan yang banyak ikan.&nbsp;Terumbu&nbsp;karang buatan dibangun di sekitar terumbu karang, sehingga nelayan tidak lagi menangkap ikan di terumbu karang, tetapi berpindah di terumbu karang buatan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. Penelitian</strong></p>\r\n\r\n<p>Transplantasi karang untuk tujuan penelitian, dibedakan dari persyaratan yang harus dilakukan oleh pelaksana keenam transplantasi diatas, transplantasi untuk tujuan penelitian ini diberbolehkan mengambil bibit di sekitar lokasi penelitian, dengan teknik pemotongan cabang di tempat, tanpa memindahkan induknya. Karena transplantasi untuk tujuan penelitian biasanya tidak memerlukan banyak specimen, dan dengan biaya dan waktu sangat terbatas.</p>\r\n\r\n<p>Tujuan&nbsp;transplantasi terumbu karang&nbsp;yang mempunyai karakteristik masing-masing. Jika sahabat ingin ikut berpartisipasi dalam pelestarian (khususnya transplantasi terumbu karang) bisa dipertimbangkan tujuan pencapaian kegiatan yang diinginkan.&nbsp;Untuk metode dan tahapan transplantasi terumbu karang saya tulis di kesempatan lain.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Pustaka :</strong></p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;terumbungeblogsekarang.blogspot.com/2010/11/tujuh-tujuan-transplantasi-terumbu.html</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;regional.coremap.or.id/downloads/modul_transplantasi_TK.pdf</p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.jurnalisia.net/2010/05/pelestarian-terumbu-karang-dengan.html">http://www.jurnalisia.net/2010/05/pelestarian-terumbu-karang-dengan.html</a></p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://ilmukelautan.com/">http://ilmukelautan.com/</a></p>\r\n\r\n<p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://bisniswisata.co/">http://bisniswisata.co/</a></p>\r\n\r\n<p>&middot;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="http://firmans08.files.wordpress.com/2011/05/kerusakan-terumbukarang.jpg">http://firmans08.files.wordpress.com/2011/05/kerusakan-terumbukarang.jpg</a></p>', 3, 'terverifikasi', '2017-11-05 18:34:29', '2017-11-05 19:32:44'),
(6, 'judul', '<p>ajkshdjkshkjfhkdsjhfh</p>\r\n\r\n<p>dsfdsjkfjhkdsfkds</p>', 3, 'terverifikasi', '2017-11-08 22:20:09', '2017-11-08 22:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `ikan`
--

CREATE TABLE `ikan` (
  `id` int(11) NOT NULL,
  `namaIkan` varchar(30) NOT NULL,
  `famili` varchar(30) NOT NULL,
  `umur_produktif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ikan`
--

INSERT INTO `ikan` (`id`, `namaIkan`, `famili`, `umur_produktif`) VALUES
(1, 'Ikan Cupang', 'Osphronemidae', 6),
(5, 'Ikan Manfish', 'Cichlidae', 7),
(6, 'Ikan Discus', 'Cichlidae', 12);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `id_diskusi` int(11) DEFAULT NULL,
  `isi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spesies_ikan`
--

CREATE TABLE `spesies_ikan` (
  `id_spesies` int(11) NOT NULL,
  `nama_spesies` varchar(40) NOT NULL,
  `id_ikan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spesies_ikan`
--

INSERT INTO `spesies_ikan` (`id_spesies`, `nama_spesies`, `id_ikan`) VALUES
(2, 'B.Persephone', 1),
(3, 'B. picta', 1),
(4, 'B. pugnax', 1),
(5, 'Pterophyllum altum', 5),
(6, 'Pterophyllum leopoldi', 5),
(7, 'Pterophyllum scalare', 5),
(8, 'Symphysodon aequifasciata aequifasciata', 6),
(9, 'Symphysodon aequifasciata axelrodi', 6),
(10, 'Symphysodon aequifasciata haraldi', 6);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'admin'),
(2, 'users');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `id_status`) VALUES
(1, 'syams', 'syamsrachman@gmail.com', '$2y$10$5dsieNyhrxQItDz5Em9EG.MJYFHelEVYc0xlsMiCO1uy3Ro0iyy9y', 'gzZOgf4vAskDZqofUsjLknZrzXatOvTrReLc29XUV8Rye2FGoB8S4tvLTaB5', '2017-10-27 22:54:17', '2017-10-27 22:54:17', 2),
(2, 'SyamsRachman', 'syams@gmail.com', '$2y$10$.xvAvjdPKnag8TM5A6xliuAMhDjVOQM60zC.IXRzIxdwOOgxMp.uq', 'RRdI1XRoSEHEQES0wuZbCadEX8GkToidmfuMFERuAppzccqzhwQrS3L1FwTz', '2017-11-02 14:01:29', '2017-11-02 14:01:29', 1),
(3, 'user', 'user@email.com', '$2y$10$HzPrqMlfDakupVpdSrC/y.XZBDxvabEGXHahLjvkOPNrbpK1ACLvG', 'hf5tMXK9Uz9psB62sR44aprzCTRdGbczHw3NIxlmq8ONdKS0Dcb6q4EUMffg', '2017-11-04 02:45:12', '2017-11-04 02:45:12', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ikan`
--
ALTER TABLE `ikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spesies_ikan`
--
ALTER TABLE `spesies_ikan`
  ADD PRIMARY KEY (`id_spesies`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ikan`
--
ALTER TABLE `ikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spesies_ikan`
--
ALTER TABLE `spesies_ikan`
  MODIFY `id_spesies` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
