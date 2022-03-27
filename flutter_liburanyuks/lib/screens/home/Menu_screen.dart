import 'package:flutter/material.dart';
import 'package:flutter_liburanyuks/screens/home/Menu_item.dart';
import '/models/object.dart';

class HotDestination extends StatelessWidget {
  HotDestination({Key? key}) : super(key: key);

  List<Object> objects = [
    Object(
        name: 'Pemandian Air Panas Way Belerang',
        photosName: 'assets/images/objects/Pemandian Air Panas.jpg',
        gist:
            'Way Belerang merupakan sebuah tempat pemandian air panas di lereng Gunung Rajabasa, Lampung Selatan, Provinsi Lampung. Suasana alamnya sangat sejuk dan alami yang dipenuhi dengan pepohonan besar. Di tempat ini pengunjung bisa melakukan relaksasi dengan berendam di air panas yang dipercaya bisa menyembuhkan penyakit rematik, gatal gatal, penyakit kulit lainnya. Sesuai namanya, air panas di Way Belerang memang bercampur belerang. Oleh karena itu, warga yang datang ke sini bukan hanya untuk berwisata semata, banyak juga yang berbasah ria sambil melakukan terapi penyakit kulit, rematik dan sebagainya. Yang menarik, di way Belerang juga ada taman bermain untuk anak-anak, bahkan ada fasilitas kolam renang air tawar dan flying fox, balai pertemuan, arena bermain, kantin, delman lengkap dengan kudanya dan arena taman terbuka.'),
    Object(
        name: 'Pulau Tegal Mas',
        photosName: 'assets/images/objects/Pulau Tegal Mas.jpeg',
        gist:
            'Pulau Tegal Mas merupakan sebuah kawasan wisata yang terletak di Pulau Tegal, Kecamatan Teluk Pandan, Kabupaten Pesawaran, Lampung. Banyak yang menyebutnya mirip dengan Maladewa, karena eksotisme alam & penginapan terapung yang ada di sekelilingnya. Pulau Tegal Mas seolah telah menjadi magnet yang memikat hati para wisatawan sejak perkembangan akhirnya pada tahun 2017. Tak sebatas turis domestik, destinasi wisata yang berdiri di atas lahan seluas 113 Ha ini juga mulai dilirik oleh wisatawan dari berbagai negara. Kekayaan biodiversitas yang dimiliki Pulau Tegal Mas, terutama alam bawah lautnya, dinilai tak kalah dengan lokasi lain di Indonesia. Sangat cocok untuk dieksplor setiap orang yang gemar melakukan aktivitas snorkeling atau diving. Disini wisatawan akan dimanjakan dengan keindahan berbagai biota laut, mulai dari terumbu karang, anemon, hingga berbagai jenis ikan yang menjadi penghuninya. Sebagai sarana penunjang, tersedia pula dive center serta snorkeling center yang bisa dimanfaatkan pengunjung untuk informasi dan penyediaan peralatan penyelaman.'),
    Object(
        name: 'Pulau Pahawang',
        photosName: 'assets/images/objects/Pulau-Pahawang-Lampung.jpg',
        gist:
            'Banyak aktivitas wisata yang bisa dilakukan saat Anda mengunjungi Pulau Pahawang, mulai dari memancing, snorkeling, hingga diving.'),
    Object(
        name: 'Taman Nasional Way Kambas',
        photosName: 'assets/images/objects/Taman Nasional Way Kambas.jpg',
        gist:
            'Selain sebagai tempat konservasi untuk melindungi satwa dari pemburuan, Taman Nasional sering kali menawakan pemandangan indah yang selalu diidam-idamkan oleh wisatawan. Termasuk Taman Nasional Way Kambas. Sebagai tempat pelestarian gajah dan badak, taman nasional ini ada bertujuan untuk sarana konservasi dan zonasi berbagai fauna dari kepunahan. Selain itu juga sebagai sarana edukasi kepada wisatawan agar lebih cinta fauna dan melestarikannya. Fasilitas dalam Taman Nasional ini sudah sangat memadai. Sarana dan prasarananya bisa dikatakan tersedia dan dikelola dengan baik. Mulai dari penginapan, arena-arena wisata, pusat informasi, WC, dan mushola Selain pemandangan alamnya yang indah, tentu taman nasional ini memiliki banyak daya tarik yang menjadi keunikannya tersendiri. Terlebih lagi ikon gajah sumatranya, tentu binatang berukuran besar ini sangat menarik perhatian wisatawan.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Destination',),
          backgroundColor: Color.fromARGB(255, 0, 191, 255),
          elevation: 5,
        ),
      body: Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(4),
        childAspectRatio: 0.72,
        children: objects.map<Widget>((Object p) {
          return Menu(object: p);
        }).toList(),
      ),
    ),
    );
  }
}

class Entertainment extends StatelessWidget {
  Entertainment({Key? key}) : super(key: key);

  List<Object> objects = [
    Object(
        name: 'Lembah Hijau Lampung',
        photosName: 'assets/images/objects/lembah_hijau.jpg',
        gist:
            'Taman Wisata Lembah Hijau merupakan Taman Wisata, dan Waterboom terbesar di Lampung. Lokasi ini merupakan pionir wisata alam yang ada di Bumi Ruwa Jurai yang tidak kalah dengan Kebun Binatang Ragunan di Jakarta Selatan atau Waterboom Lippo Cikarang sekalipun. Sejak dibuka pada April 2007 lalu, taman wisata alam buatan Lembah Hijau sudah menjadi tempat rekreasi favorit di Lampung. Tempat rekreasi alam yang menempati lahan seluas 30 hektar ini berada di Jalan Radin Imba Kesuma Ratu, Kampung Sukajadi, Sukadanaham, Tanjung Karang Barat, Bandar Lampung. Lembah hijau terdiri dari taman rekreasi dan kebun binatang mini. Berada di area perbukitan dihiasi lembah dan sungai kecil. Tidak berlebihan apabila taman rekreasi ini diberi nama Lembah Hijau. Taman hijau yang sejuk ini menawarkan banyak kesenangan dan hiburan bagi masyarakat Lampung dan khususnya bagi wisatawan dalam negeri yang datang ke Lampung. area yang luas, Taman Wisata Lembah Hijau menyediakan berbagai wahana hiburan variatif di antaranya adalah: taman satwa, kolam renang dan waterboom, Cinema 4D, Boom Boom Car, arena bermain sepak bola, kereta mini, dan lainnya. Pengunjung yang berwisata ke Lembah hijau akan dikenakan biaya tiket. Harga tiket ditawarkan mulai dari Rp15.000.Anak berusia dibawah 1 tahun bebas biaya tiket masuk.Taman rekreasi keluarga ini bisa dikunjungi mulai pagi hari. Tempat wisata ini sudah buka pukul 08.00 WIB pagi. Wahana Lengkap, dari Rumah Hantu Hingga Cinema Empat Dimensi Wahana permainan lain, pengunjung tak perlu takut merasa bosan di Lembah Hijau Lampung. Dengan lahan yang luas, maka banyak pula ruang permainan disediakan. Di antaranya komidi putar (carousel), kereta api kecil, dan boom-boom car. Tidak ketinggalan Rumah Hantu menjadi wahana berisi hantu menyeramkan yang paling banyak menarik pengunjung. Ingin mendapat pengalaman naik roller coaster? Pengunjung dapat berpetualang di Cinema Empat Dimensi. Di wahana ini, pengunjung berkesempatan menonton film dengan kacamata 4D. Duduk santai, dan rasakan sensasi berguncang seperti naik roller coaster!'),
    Object(
        name: 'Lampung Walk',
        photosName:
            'assets/images/objects/Waterpark-Lampung-Walk.-Foto-Gmap-Rizki-Adhi-Wijaya.jpg',
        gist:
            'Lampung Walk semakin menambah khazanah tempat wisata Lampung yang cocok sebagai objek wisata keluarga di saat liburan tiba. Area spot foto 3 dimensi Lampung Walk menjadi penegasan akan hal tersebut. Bahkan bisa dibilang sebagai salah – satu spot foto 3 dimensi pertama yang ada di Lampung. Namun, Lampung Walk bukan hanya sekedar berbicara tentang spot foto saja. Sebagai tempat One Stop Family Entertainment di Bandar Lampung, yang artinya adalah Lampung Walk merupakan gabungan konsep wisata dengan hiburan, kuliner dan olahraga. Konsep wisata kekinian lebih ditonjolkan disini, sehingga untuk kaum Milenial sangat tepat sasaran. Menyasar kalangan yang melek teknologi untuk berbagi di sosial media menjadi Wisata Lampung Walk mudah populer di Lampung. Disana dapat menikmati liburan sambil berolahraga, jadi pengunjung tidak bosan dan terlebih banyak fasilitas yang ditawarkan. Seperti apa wahana, fasilitas yang ada disana serta berapa harga tiket masuknya? Simak secara seksama, kita kupas tuntas untuk anda. Lampung Walk adalah tempat wisata yang memadukan konsep wisata alam terbuka, yang dikolaborasikan dalam satu kawasan yang sama dengan area olah raga, Water Boom, dan area food court untuk menikmati wisata kuliner di Lampung. Di sini juga ada Els Coffee, tempat ngopi anak muda di Bandar Lampung, asli punya orang Lampung dan kopinya asli kopi Lampung.'),
    Object(
        name: 'Puncak Mas',
        photosName: 'assets/images/objects/puncak-mas-lampung.jpg',
        gist:
            'Puncak Mas Lampung menjadi pilihan terbaik bagi mereka yang sedang bingung mencari tempat hiburan di Lampung. Banyaknya kunjungan wisata ke Puncak Mas Lampung dikarenakan lokasinya berada di sebuah bukit, serta memiliki area yang tertata dengan baik, sehingga tersaji sebuah taman instagramable di atas ketinggian Kota Bandar Lampung. Selain itu, semua yang dibutuhkan untuk menunjang kenyamanan wisata para pengunjung tersaji lengkap di Puncak Mas Lampung, termasuk cottage, atau penginapan. Daya tarik yang pertama dari Puncak Mas Lampung adalah area utamanya berupa taman yang luas, yang tertata secara baik, serta memiliki konsep kekinian. Ada juga area food court, atau cafe yang menyajikan aneka macam makanan, dan minuman. Penataan cafe tersebut juga sangat baik, dan akan membuat nyaman pengunjung yang datang. Udara yang sejuk, suasana yang tenang, view alam yang menawan, serta dilengkapi dengan fasilitas yang baik adalah kenikmatan saat berada di lokasi tersebut. Puncak Mas Lampung Lokasinya yang terdapat di kawasan perbukitan. Kondisi geografis ini membuat Puncak Mas memiliki pemandangan alam yang menyegarkan mata yang bisa mendamaikan pikiran, hati dan juga jiwa. Wilayah Puncak Mas berupa perbukitan, sehingga sangat cocok dikembangkan dengan spot wisata berupa gardu pandang seperti wisata dataran tinggi pada umumnya. Dari atas ketinggian Puncak Mas ini pengunjung dapat menikmati view perkotaan, pegunungan dan juga laut. Terdapat sebuah rumah pohon untuk menikmati keindahan kota Lampung dari ketinggian. Rumah pohon ini yang menjadi incaran oleh kalangan anak muda yang suka selfie. Waktu terbaik saat berada di Puncak Mas yaitu malam hari. Pada malam hari, pengunjung dapat melihat keindahan panorama. Keindahan berupa perpaduan antara kota Bandar Lampung yang bagaikan lautan kunang-kunang serta langit lepas yang dihiasi ribuan bintang. Apalagi jika di bulan purnama ditambah dengan teduh sinar bulan. Pemandangan pada siang hari pun juga tak kalah cantik. Sebab dibangun outdoor, jadi pastikan kamu mengunjungi tempat wisata baru ini pada saat sedang tidak hujan. Bagi wisatawan yang menyukai wahana pemacu adrenalin, Sepeda Gantung telah hadir di sini. Seluruh anggota keluarga diharapkan bisa menikmati liburan di tempat ini. Mulai dari anak kecil, anak remaja, hingga orang dewasa. Selain rumah pohon dan berbagai wahana yang ditujukan untuk pengunjung muda dan dewasa, terdapat pula taman untuk berekreasi. Taman rekreasi ini didesain sebagai taman bermain untuk anak-anak. Taman sudah lengkap dengan berbagai permainan yang aman dan tentu saja seru.'),
    Object(
        name: 'Transmart Lampung',
        photosName: 'assets/images/objects/Transmart Lampung.jpeg',
        gist:
            'Mengusung konsep yang menjadi ciri khas Transmart yaitu dengan mengkombinasikan antara berbelanja dengan hiburan, menjadi daya tarik sendiri bagi masyarakat yang ada di Bandar Lampung. Kehadiran Transmart di Lampung ini adalah kabar gembira bagi para pecinta film di Bandar Lampung. Pasalnya saat ini tidak hanya ada di Mall Boemi Kedaton dan Mall Kartini saja, masyarakat juga bisa nonton di CGV Cinema Transmart Lampung. Transmart memiliki ciri khas yang sangat menonjol dibandingkan dengan Hypermart lainnya, di mana Transmart mengkombinasikan antara kegiatan berbelanja dengan, hiburan dan makanan. Transmart Lampung juga memiliki Trans Studio Mini Lampung, yang merupakan fasilitas hiburan dan permainan yang menjadi Ikon dari Transmart. Aneka macam wahana yang disediakan di Trans Studio Mini Lampung diantaranya adalah Venture River, Bumper Car, Train Mini, New York Swing, Playground, Sky Rider, dan juga Crazy Cab Coaster dengan tarif wahana berkisar antara 30 ribu sampai dengan 50 ribu rupiah.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Entertaiment'),
          backgroundColor: Color.fromARGB(255, 0, 191, 255),
          elevation: 5,
        ),
      body: Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(4),
        childAspectRatio: 0.72,
        children: objects.map<Widget>((Object p) {
          return Menu(object: p);
        }).toList(),
      ),
    ),
    );
  }
}

class Lodging extends StatelessWidget {
  Lodging({Key? key}) : super(key: key);

  List<Object> objects = [
    Object(
        name: 'Swiss-Belhotel Lampung',
        photosName: 'assets/images/objects/Swiss-Belhotel Lampung.jpg',
        gist:
            'Swiss-Belhotel Lampung adalah hotel bintang 4 bertaraf internasional di Lampung dengan pemandangan laut, bukit serta landscape kota Lampung yang indah. Hotel kelas atas yang mewah ini berjarak 4 km dari CitraGarden Waterpark dan 9 km dari Museum Lampung. Hotel ini menawarkan 167 kamar, mulai dari Kamar Deluxe hingga Kamar Presidential Suite yang mewah. Kamar elegan yang bernuansa hangat dilengkapi dengan Wi-Fi gratis, TV layar datar, alat pembuat kopi, serta brankas. Kamar di kelas yang lebih tinggi dan suite memiliki kulkas mini, area duduk, dan kamar tidur terpisah. Suite di kelas yang lebih tinggi dilengkapi dengan furnitur mewah, ruang keluarga dan ruang makan, serta jendela setinggi langit-langit. Layanan antar-jemput bandara gratis disediakan. Terdapat kafe 24 jam di tepi kolam renang, bar modern 24 jam, dan restoran steak formal dengan pemandangan laut. Fasilitas lainnya meliputi kolam renang outdoor dan gym. Untuk pengalaman bersantap yang istimewa di Lampung, hotel kami menawarkan beragam pilihan kuliner dengan hidangan lokal maupun internasional di Swiss-Cafe Restaurant. Beragam pilihan koktail, moktail dan makanan ringan tersedia sepanjang hari di The Lounge dan Bar. Kami memberikan anda sesuatu yang pasti ingin Anda bagikan dengan orang yang anda cintai! Bancheese yang dibuat dengan penuh cinta oleh chef pastry kami dan spesial dari Swiss-Belhotel Lampung.'),
    Object(
        name: 'Sheraton Lampung Hotel',
        photosName: 'assets/images/objects/Sheraton Lampung Hotel.jpeg',
        gist:
            'Hotel dan pusat konferensi kelas atas yang terletak di kawasan bisnis kota ini berjarak 4 km dari stasiun kereta Tanjung Karang dan 3 km dari tempat berbelanja di Mal Kartini. Sheraton Lampung Hotel menyambut Anda ke Indonesia dengan layanan yang mudah dan lingkungan yang modern dan ramping. Terletak di Bandar Lampung, hotel kami menawarkan akomodasi modern dengan balkon atau teras pribadi yang menawarkan pemandangan kolam renang atau taman yang menakjubkan. Fasilitasnya termasuk Wi-Fi gratis, fasilitas membuat kopi/teh, dan minibar. Bagi mereka yang ingin menyelenggarakan pertemuan bisnis atau acara sosial di Bandar Lampung, hotel kami memiliki serangkaian ruang yang fleksibel dan inspiratif, lengkap dengan teknologi cerdas dan layanan perencanaan dan katering yang dipesan lebih dahulu. Kamar-kamar bernuansa santai dilengkapi dengan Wi-Fi gratis, TV layar datar, minibar, serta pembuat teh dan kopi. Beberapa kamar memiliki pemandangan kolam renang atau taman. Room service tersedia 24 jam. Tersedia tempat parkir gratis. Terdapat restoran yang menyajikan hidangan internasional, kedai kopi/toko roti, bar lobi, dan teras. Para tamu dapat memilih dari berbagai pilihan makanan internasional dan lokal, dari layanan kamar 24 jam hingga restoran di tepi kolam renang. Selain kolam renang luar ruangan yang tenang, fasilitas rekreasi di hotel ini termasuk pusat kebugaran, jalur joging, dan lapangan tenis. Terletak di pusat Bandar Lampung, hotel kami adalah lokasi yang bagus untuk menjelajahi daerah sekitarnya. Fasilitas lainnya termasuk kolam renang outdoor dengan bak mandi air panas, serta gym, dan lapangan tenis dengan penerangan. Business center dan ruang konferensi juga tersedia. Sarapan dikenakan biaya tambahan.'),
    Object(
        name: 'Novotel Lampung',
        photosName: 'assets/images/objects/Novotel_Lampung.jpg',
        gist:
            'Terletak 11 km dari taman rekreasi air dan taman rekreasi Lembah Hijau, hotel santai di gedung indah ini juga berjarak 13 km dari Museum Lampung dan 15 km dari Pantai Mutun. Menampilkan panorama gunung dan pantai, kamar bernuansa hangat menyediakan Wi-Fi, TV layar datar, fasilitas pembuat teh dan kopi, serta minibar dan brankas. Kamar di kelas yang lebih tinggi dilengkapi ruang keluarga dan jendela setinggi langit-langit. Fasilitas meliputi kolam air panas indoor dan outdoor, serta 2 bar dan sebuah restoran internasional. Ada juga spa, gym, dan sauna, serta business center dan tempat parkir. Di hotel ini, Anda dapat menemukan spa dan pusat kesehatan, restoran, serta pusat kebugaran. Fasilitas lain yang ditawarkan meliputi penyimpanan bagasi, layanan menyetrika dan binatu.'),
    Object(
        name: 'Emersia Hotel & Resort',
        photosName: 'assets/images/objects/Emersia Hotel & Resort.jpg',
        gist:
            'Hotel kelas atas di gedung berfasad kaca modern ini memiliki panorama laut Jawa dan pegunungan di sekitarnya. Jaraknya 2 km dari Stasiun Tanjung Karang dan 9 km dari Pantai Tirtayasa. Dilengkapi jendela setinggi langit-langit berpanorama laut, kolam renang, atau gunung, kamar sederhana ini dilengkapi Wi-Fi gratis, TV layar datar, bar mini, serta fasilitas pembuat teh dan kopi. Seluruh kamar yang ber-AC memiliki lantai kayu dan jendela-jendela besar serta dilengkapi dengan TV kabel layar datar dan kulkas. Kamar mandi pribadinya menawarkan shower dan perlengkapan mandi gratis. Emersia Hotel and Resort berselang 5 menit berkendara ke Mall Kartini dan Central Plaza. Lampung Museum dapat dicapai dalam waktu 10 menit berkendara, sedangkan Bandara Radin Inten II berselang 35 menit berkendara dari resort. Layanan binatu, menyetrika, dan penyewaan mobil tersedia dengan biaya tambahan. Emersia menawarkan bagian penerima tamu 24-jam, layanan pramutamu, dan parkir pribadi gratis. Masakan Indonesia dan Cina disajikan di Sapphire Coffee Shop dan Ruby Coffee Shop. Ada juga kolam outdoor dan gym. Fasilitas meliputi restoran yang luas, bar koktail, serta teras dengan panorama laut. Suite memiliki area tempat duduk, sementara suite di kelas yang lebih tinggi memiliki ruang keluarga/ruang makan terpisah.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Lodging'),
          backgroundColor: Color.fromARGB(255, 0, 191, 255),
          elevation: 5,
        ),
      body: Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(4),
        childAspectRatio: 0.72,
        children: objects.map<Widget>((Object p) {
          return Menu(object: p);
        }).toList(),
      ),
    ),
    );
  }
}