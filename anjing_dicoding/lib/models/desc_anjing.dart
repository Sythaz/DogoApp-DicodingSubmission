class DescAnjing {
  String name;
  String jenis;
  String asal;
  String description;
  String image;
  String lifespan;
  List<String> fact;

  DescAnjing(
      {required this.name,
      required this.jenis,
      required this.asal,
      required this.description,
      required this.image,
      required this.lifespan,
      required this.fact});
}

var descAnjingList = [
  DescAnjing(
    name: 'Siberian Husky',
    jenis: 'Anjing ras',
    asal: 'Siberia',
    description:
        'Husky adalah ras anjing yang kuat dan energetik, berasal dari Siberia. Mereka dikenal dengan bulu tebal dan mata biru atau berwarna terang. Husky adalah anjing pekerja yang cerdas dan ramah, sering digunakan untuk menarik kereta salju.',
    image: 'images/husky-freepik.png',
    lifespan: '12 - 15 tahun',
    fact: huskyFunFact,
  ),
  DescAnjing(
    name: 'Golden Retriever',
    jenis: 'Anjing pekerja',
    asal: 'Skotlandia',
    description:
        'Golden Retriever adalah anjing yang ceria, ramah, dan cerdas. Mereka memiliki bulu berwarna emas dan merupakan salah satu ras anjing yang paling populer di dunia. Golden Retriever dikenal sebagai anjing keluarga yang setia dan dapat diajak bekerja sebagai anjing pendeteksi atau penolong.',
    image: 'images/goldenretriever-freepik.png',
    lifespan: '10 - 12 tahun',
    fact: goldenRetrieverFunFact,
  ),
  DescAnjing(
    name: 'Bulldog',
    jenis: 'Anjing ras',
    asal: 'Inggris',
    description:
        'Bulldog, atau disebut juga Bulldog Inggris, adalah anjing yang pendek dan berpostur kokoh. Mereka memiliki wajah khas dengan hidung pesek dan kerutan pada wajah. Meskipun mereka terlihat berotot dan tegar, bulldog adalah anjing yang lembut, ramah, dan setia.',
    image: 'images/bulldog-freepik.png',
    lifespan: '8 - 10 tahun',
    fact: bulldogFunFact,
  ),
  DescAnjing(
    name: 'Dachshund',
    jenis: 'Anjing ras',
    asal: 'Jerman',
    description:
        'Dachshund, atau anjing Dackel, adalah ras anjing dengan tubuh panjang dan kaki pendek. Mereka dikenal dengan julukan "anjing sosis". Dachshund adalah anjing cerdik, berani, dan penuh semangat. Mereka sering memiliki banyak energi dan antusiasme.',
    image: 'images/dachshund-freepik.png',
    lifespan: '12 - 16 tahun',
    fact: dachshundFunFact,
  ),
  DescAnjing(
    name: 'Pug',
    jenis: 'Anjing ras',
    asal: 'Tiongkok',
    description:
        'Pug adalah anjing kecil dengan bentuk tubuh yang bulat dan wajah keriput. Mereka memiliki karakter yang ceria, ramah, dan senang bermain. Pug adalah anjing pendamping yang setia dan cocok untuk kehidupan apartemen karena ukurannya yang kecil.',
    image: 'images/pug-freepik.png',
    lifespan: '12 - 15 tahun',
    fact: pugFunFact,
  ),
  DescAnjing(
    name: 'Chihuahua',
    jenis: 'Anjing ras',
    asal: 'Meksiko',
    description:
        'Chihuahua adalah salah satu ras anjing terkecil di dunia. Mereka memiliki kepribadian yang ceria, penuh semangat, dan berani. Chihuahua adalah anjing yang sangat setia terhadap pemiliknya dan sering memiliki ikatan yang kuat dengan keluarga.',
    image: 'images/chihuahua-freepik.png',
    lifespan: '12 - 20 tahun',
    fact: chihuahuaFunFact,
  ),
  DescAnjing(
    name: 'Shiba Inu',
    jenis: 'Anjing ras',
    asal: 'Jepang',
    description:
        'Shiba Inu adalah ras anjing asal Jepang yang berukuran sedang. Mereka memiliki bulu tebal dan ekor bergulung di atas punggung. Shiba Inu adalah anjing yang penuh semangat, cerdas, dan mandiri. Mereka memiliki sifat percaya diri dan independen.',
    image: 'images/shiba-inu-freepik.png',
    lifespan: '12 - 16 tahun',
    fact: shibainuFunFact,
  ),
];

List<String> huskyFunFact = [
  "Husky memiliki 230 tulang, lebih banyak dari anjing jenis lain.",
  "Husky bisa berlari sejauh 100 mil dalam sehari.",
  "Husky bisa melihat dalam kegelapan lebih baik daripada manusia.",
  "Husky suka bermain dengan es dan salju.",
  "Husky adalah anjing yang setia dan penyayang."
];

List<String> goldenRetrieverFunFact = [
  "Golden Retriever memiliki lidah yang panjangnya bisa mencapai 12 inci.",
  "Golden Retriever adalah anjing yang suka berenang.",
  "Golden Retriever adalah anjing yang pintar dan mudah dilatih.",
  "Golden Retriever adalah anjing yang ramah dan penyayang.",
  "Golden Retriever adalah anjing yang populer sebagai anjing penyelamat."
];

List<String> bulldogFunFact = [
  "Bulldog adalah anjing yang suka tidur.",
  "Bulldog adalah anjing yang ramah dan penyayang.",
  "Bulldog adalah anjing yang kuat dan tangguh.",
  "Bulldog adalah anjing yang populer sebagai anjing penjaga.",
  "Bulldog adalah anjing yang populer sebagai anjing terapi."
];

List<String> dachshundFunFact = [
  "Dachshund memiliki tubuh yang panjang dan kaki yang pendek.",
  "Dachshund adalah anjing yang suka bermain.",
  "Dachshund adalah anjing yang ramah dan penyayang.",
  "Dachshund adalah anjing yang populer sebagai anjing pemburu.",
  "Dachshund adalah anjing yang populer sebagai anjing hias."
];

List<String> pugFunFact = [
  "Pug memiliki wajah yang lucu dan menggemaskan.",
  "Pug adalah anjing yang suka bermain.",
  "Pug adalah anjing yang ramah dan penyayang.",
  "Pug adalah anjing yang populer sebagai anjing peliharaan keluarga.",
  "Pug adalah anjing yang populer sebagai anjing terapi."
];

List<String> chihuahuaFunFact = [
  "Chihuahua adalah anjing yang paling kecil di dunia.",
  "Chihuahua adalah anjing yang suka bermain.",
  "Chihuahua adalah anjing yang ramah dan penyayang.",
  "Chihuahua adalah anjing yang populer sebagai anjing peliharaan keluarga.",
  "Chihuahua adalah anjing yang populer sebagai anjing hias."
];

List<String> shibainuFunFact = [
  "Shiba Inu adalah anjing yang cerdas dan mandiri.",
  "Shiba Inu adalah anjing yang suka bermain.",
  "Shiba Inu adalah anjing yang ramah dan penyayang.",
  "Shiba Inu adalah anjing yang populer sebagai anjing peliharaan keluarga.",
  "Shiba Inu adalah anjing yang populer sebagai anjing penjaga."
];
