import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class KulinerList {
  List<ItemKulinerData> kulineritems;

  KulinerList({@required this.kulineritems});
}

class ItemKulinerData {
  var urlImage;
  var title;
  var address;
  var detail;

  ItemKulinerData({this.urlImage, this.address, this.detail, this.title});
}

KulinerList kulinerList = KulinerList(kulineritems: [
  ItemKulinerData(
      title: "Apel Malang",
      detail:
          "Karena aromanya yang wangi, apel malang disebut-sebut sebagai jenis apel yang sangat digemari. Ciri-ciri apel malang adalah bentuk buah bulat dengan ujung pangkal berlekuk datar, kulit buah hijau muda kekuningan, daging buah manis, tekstur liat dengan sedikit kandungan air, dan rasa buah manis.",
      address: "Jajanan khas Kota Malang",
      urlImage:
          "https://cdns.klimg.com/newshub.id/news/2016/09/17/96560/750x500-sudah-tahu-ini-jenis-dan-ciri-apel-malang-160917y.jpg"),
  ItemKulinerData(
      title: "Repoeblik Telo",
      address: "Jl Dr. Sutomo, Lawang, Malang (depan Bakpao Telo)",
      detail:
          "Banyak sekali manfaat ubi-ubian untuk kesehatan, ubi jalar salah satunya.Ubi jalar sebagai sumber makanan tentu sudah tidak asing bagi sebagian besar masyarakat Indonesia. Kemudahan mendapatkan ubi membuat masyarakat suka dengan makan makanan berbasis ubi jalar ini rasanya pun enak.",
      urlImage:
          "https://sgp1.digitaloceanspaces.com/tz-mag-id/wp-content/uploads/2018/05/090905051010/oleh-oleh-khas-malang-19-1024x1024.jpg"),
  ItemKulinerData(
      title: "Bakso Malang",
      detail:
          "Bakso merupakan salah satu ikon kuliner di Malang yang sangat dikenal berbagai kalangan masyarakat di nusantara, khususnya warga Malang. Layaknya primadona, wisata kuliner Malang ini banyak dijajakan di berbagai kota mulai dari pedagang kaki lima, kios, warung, depot, bahkan restoran.Sehingga wisata Kuliner Malang yakni Bakso Malang tidak sulit dicari. Sajian bakso Malang juga sudah mulai dikreasikan hingga memiliki ciri khas sendiri untuk menarik minat pembeli.Bakso Malang sendiri terdiri aneka bakso, pangsit isi, tahu, mi, bihun dan siomay. Anda juga bisa memilih dan mengombinasikan isi mangkuk wisata kuliner Malang ini sesuai dengan selera. Tanpa disadari, hal tersebut membuat pengalaman makan Bakso Malang menjadi menyenangkan.",
      address: "Sepanjang jalan malang",
      urlImage:
          "https://makananoleholeh.com/wp-content/uploads/2017/05/Bakso-Makanan-Khas-Malang.jpg"),
  ItemKulinerData(
      title: "CAFE BUKIT DELIGHT",
      detail:
          "Cafe di Malang berikutnya yang wajib kamu kunjungi adalah Bukit Delight Cafe. Cafe di Malang ini memang cocok banget sebagai tempat nongkrong yang asyik, karena lokasi Bukit Delight ini nampak view ke beberapa pegunungan yang sangat menawan, diantaranya adalah Gunung Arjuno, Gunung Panderman, dan Gunung Banyak.",
      address: "Jl. Joyo Agung No.1, Kota Malang",
      urlImage:
          "https://lh3.googleusercontent.com/jMuyV280MXceh1Tdst2FRQhQGoU-07NRkQLMcxl8cJSjcvXyzbLRUHnZ4KqFLHvuOwWhOYS4AHRDpC8XRCzN0Ma_J0blXlg0uIh_5aHWIRwYCclC2__8n1kO7zfjV9rcbxWHZs9GkaeRv53AzLkeiOfonb7UwrE_hoRcNahiCXePnaTu3sPiivocoXNQrPWtUPsIC0kcesHgpwCjU0RSSgPMYczQTqwkcB4tHKl6EZos9H-hTWu7AF0O1rO4vHtXqr9b57bgFhF_aNKmxVafpQSzRfv2nRZntMv3j0ecmhNKrJepkUOfc8VqcOHf8dE-NFPNShRKowgpDIYYtTUgS7zdxxoOcHgcDaqrEoy8Cw1RcS9N2TNDoD7-TQEge3CRgaaqXFJWlzbk8hyi22GSMOQIrtoAbmYfdRF45liVwKR7U3twpZC_z3Sn1AEVZcPSCFzHTqhfz9X3YRaWADrODUONHvO2NtngykRwZ9WovPkKTvE46KrxIxAK7AAuoWVaAQKdFQah8YGWYrAtkQkdo0fOpbY63_oQ2pMw4FML9eD-qbIUeQItx5OGkcttKMAIP5xm2R84IitSoFcerEPfPwqOIREVDhmUle8pFDDfZpmeDCCN9lIBtrIaQJJojTJF2PM1GIHa0IPxClbA9eUlX4hi=w600-h400-no"),
  ItemKulinerData(
      title: "SAIGONSAN RESTAURANT",
      detail:
          "Pernah makan mewah nan spesial di dalam sebuah candi kuno? Kalau belum, mungkin kamu harus mencoba paket The Lost Temple Dinner yang disajikan Saigonsan Restaurant di Hotel Tugu Malang ini. Restoran dan cafe di Malang ini yang menyajikan berbagai masakan Modern Vietnam & Thai, dengan menu reguler pada setiap harinya.Jika ada yang bertanya mengenai Saigonsan Restaurant, kamu bisa membayangkan sebuah hall yang interiornya didesain khusus sedemikian rupa sehingga menyerupai Candi Angkor Wat yang ada di Kamboja. Maka, jangan heran ketika masuk ke dalamnya, kamu akan melihat dinding dan pilar-pilar batu bak di tengah candi. Kamu juga dapat melihat sebuah arca berukuran raksasa berwujud salah satu tokoh bernama Jayawarman di bagian tengah hall tersebut.",
      address: "Jl. Tugu No.3, Kota Malang",
      urlImage:
          "https://lh3.googleusercontent.com/_bvuqLnwKJRU_JAeEFQ8l2yk0ZHocEO9920z5LaJlr4tpyGj7JL1ODF0Th9bu-egvavi-n-_qTFXOUD0qmAsMoUmeRv1vWovcKwNsIXmlxS4l2mu0_lXQPBou6j220k2N9ANqNc9ZqJdseuYjPBRpDpp5o9Hi_ME4-yVV9w8m16zcPgoxKIXZ98zDyO0Ij-h40ka2A8uRwV5sP7ZaDxMYrF4KI9BeP9tHH_UWKhW2Fq5Ks_t4ccy0ix1K2uvn3HD4XTM_zRiOFWFa2ToWiA3OVzLDR1FjlA1aSzVBBjg656LoccfuokFdvthUDHz_Hzp386mXTqRDuxnWDv5PcTNd3RPB4htuMokz_fd04ciNQwFX0CYdIKFCrEUvMnloE9sklRj4qpDkiNni9F8owLC4UmAhfLUmyMC_dkUGiwtbs8VL9TniLD1vh8oSlVTv_xAZAnUSbTdDhXxNCSj6rhKTH1-xpo9cGV_fQPYwIZxnknTHzwPigILDnKjpGsehq0lr6Rk9ZJ5EhdUUSPo5UXBeV79EjLTMGGR2A0SRV7hBQD79BrhZUb59hjFI8VEZW9EOhpxWBUy-2Irz-6dBuIknRYabfSn2bnruUG4dJiZygydeq87HH9wkOdGu0KxH_sk5MzwMkNCgfzgUxQV6bsE9Dhl=w600-h400-no"),
]);
