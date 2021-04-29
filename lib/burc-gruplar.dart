import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurcBulma {
  String burc;
  String grup;
  String aciklama;
  String uzunaciklama;
  String avatarbaslik;
  String detayaciklama;
  List<String> stories;
  List<String> ulusfoto;
  List<String> karakterler;
  Color renk ;
  AssetImage quizresim;

  void BurcHesapla(int ay, int gun) {
    if (ay == 1) {
      if (gun <= 19) {
        burc = "Oglak";
        grup = "Toprak Krallığı";
        aciklama =
        "Oğlak burcu Toprak grubunda olduğu için Toprak Krallığındasın.";
        uzunaciklama='Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se\'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.';
        avatarbaslik="ÖNEMLİ TOPRAK KRALLIĞI SAVAŞCILARI";
        quizresim=AssetImage("assets/quiz3.jpg");
        renk=Colors.green;
        detayaciklama=''' Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.
   Yüz Yıl Savaşlarında ise Toprak Krallığı orduları Ateş Ulusuna karşı çetin bir mücadele verse de Omashu ve Ba Sing Se’in fethi ile mücadeleleri başarısız oldu. Dai Li gibi ordunun önemli birimleri Ateş Ulusuna katıldı. Bazı küçük gruplar Kara Güneş Gününde işgale katılsalar da yenilgi sebebiyle esir düştüler. Bu yenilgiye rağmen bazı Toprak Krallığı birimleri Anka Kralı Ozai’in sonu gelene kadar direnmeye devam ettiler.''';
        karakterler = [
          'TOPH',
          'BUMİ',
          'KYOSHİ',
          'SUKİ',
          'JET',
        ];
        ulusfoto=[
          'assets/toprakulus1.png',
          'assets/toprakulus2.jpg',
          'assets/toprakulus3.jpg',
          'assets/toprakulus4.jpg',
          'assets/toprakulus5.png',
        ];
        stories = [
          'assets/toph1.jpg',
          'assets/bumi1.png',
          'assets/kyoshi.png',
          'assets/suki1.png',
          'assets/Jet.png',
        ];
      }
      if (gun > 19) {
        burc = "Kova";
        grup = "Hava Gezginleri";
        aciklama =
        "Kova burcu Hava grubunda olduğu için Hava Gezginisin.";
        uzunaciklama='Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar.';
        avatarbaslik="ÖNEMLİ HAVA GEZGİNİ SAVAŞCILARI";
        renk=Colors.blueAccent[100];
        detayaciklama='''  Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Batı Hava Tapınağı, Kuzey Hava Tapınağı, Doğu Hava Tapınağı ve Güney Hava Tapınağı olmak üzere toplam 4 tapınaktan oluşur. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar. Devletleri olmadığı için orduları da olmamıştır.   ''';
        quizresim=AssetImage("assets/quiz2.jpg");
        karakterler = [
          'AANG',
          'GYATSO',
          'PASANG',
          'TASHİ',
        ];
        ulusfoto=[
          'assets/havaulus1.jpg',
          'assets/havaulus2.png',
          'assets/havaulus3.png',
          'assets/havaulus4.png',
        ];
        stories = [
          'assets/aang1.jpg',
          'assets/gyatso.png',
          'assets/pasang.png',
          'assets/tashi.png',
        ];
      }
    }
    if (ay == 2) {
      if (gun <= 18) {
        burc = "Kova";
        grup = "Hava Gezginleri";
        aciklama =
        "Kova burcu Hava grubunda olduğu için Hava Gezginisin.";
        uzunaciklama='Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar.';
        avatarbaslik="ÖNEMLİ HAVA GEZGİNİ SAVAŞCILARI";
        renk=Colors.blueAccent[100];
        detayaciklama='''  Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Batı Hava Tapınağı, Kuzey Hava Tapınağı, Doğu Hava Tapınağı ve Güney Hava Tapınağı olmak üzere toplam 4 tapınaktan oluşur. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar. Devletleri olmadığı için orduları da olmamıştır.   ''';
        quizresim=AssetImage("assets/quiz2.jpg");
        karakterler = [
          'AANG',
          'GYATSO',
          'PASANG',
          'TASHİ',
        ];
        ulusfoto=[
          'assets/havaulus1.jpg',
          'assets/havaulus2.png',
          'assets/havaulus3.png',
          'assets/havaulus4.png',
        ];
        stories = [
          'assets/aang1.jpg',
          'assets/gyatso.png',
          'assets/pasang.png',
          'assets/tashi.png',
        ];
      }
      if (gun > 18) {
        burc = "Balık";
        grup = "Su Kabilesi";
        aciklama = "Balık burcu Su grubunda olduğu için Su Kabilesindensin.";
        uzunaciklama='Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı su bükücüler kan bükebilmektedirler. Toprak Krallığı\'nda bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.';
        avatarbaslik="ÖNEMLİ SU KABİLESİ SAVAŞCILARI";
        renk=Colors.lightBlue;
        detayaciklama='''     Su kabilesi üyelerinin ve su bükücülerin ana vatanıdır. Su Kabilesi halkı genellikle barışçıldır, doğa ve dünyanın diğer ulusları ile uyum içinde yaşamaya çalışırlar. Güney su kabilesi, Ateş Ulusu'nun bitmek bilmeyen akınlarına uğradığı için geri kalmış ve su bükücülerinin neredeyse hepsi yok edilmiştir. Kuzey Su Kabilesi ise gelişmiş bir yerdir. Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı güçlü su bükücüler kan bükebilmektedirler. Toprak Krallığı'nda bulunan bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.''';
        quizresim=AssetImage("assets/quiz1.jpg");
        karakterler = [
          'KATARA',
          'ARNOOK',
          'PAKKU',
          'SOKKA',
          'HAKODA',
        ];
        ulusfoto=[
          'assets/suulus1.png',
          'assets/suulus2.jpg',
          'assets/suulus3.jpg',
          'assets/suulus4.png',
          'assets/suulus5.png',
        ];
        stories = [
          'assets/katara.jpg',
          'assets/arnook.png',
          'assets/pakku.png',
          'assets/sokka.png',
          'assets/hakoda.png',
        ];
      }
    }
    if (ay == 3) {
      if (gun <= 19) {
        burc = "Balık";
        grup = "Su Kabilesi";
        aciklama = "Balık burcu Su grubunda olduğu için Su Kabilesindensin.";
        uzunaciklama='Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı su bükücüler kan bükebilmektedirler. Toprak Krallığı\'nda bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.';
        avatarbaslik="ÖNEMLİ SU KABİLESİ SAVAŞCILARI";
        renk=Colors.lightBlue;
        detayaciklama='''     Su kabilesi üyelerinin ve su bükücülerin ana vatanıdır. Su Kabilesi halkı genellikle barışçıldır, doğa ve dünyanın diğer ulusları ile uyum içinde yaşamaya çalışırlar. Güney su kabilesi, Ateş Ulusu'nun bitmek bilmeyen akınlarına uğradığı için geri kalmış ve su bükücülerinin neredeyse hepsi yok edilmiştir. Kuzey Su Kabilesi ise gelişmiş bir yerdir. Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı güçlü su bükücüler kan bükebilmektedirler. Toprak Krallığı'nda bulunan bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.''';
        quizresim=AssetImage("assets/quiz1.jpg");
        karakterler = [
          'KATARA',
          'ARNOOK',
          'PAKKU',
          'SOKKA',
          'HAKODA',
        ];
        ulusfoto=[
          'assets/suulus1.png',
          'assets/suulus2.jpg',
          'assets/suulus3.jpg',
          'assets/suulus4.png',
          'assets/suulus5.png',
        ];
        stories = [
          'assets/katara.jpg',
          'assets/arnook.png',
          'assets/pakku.png',
          'assets/sokka.png',
          'assets/hakoda.png',
        ];
      }
      if (gun > 19) {
        burc = "Koc";
        grup = "Ateş Ulusu";
        aciklama = "Koç burcu Ateş grubunda olduğu için Ateş Ulusundansın.";
        uzunaciklama='Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı\'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu\'nu yöneten Kraliyet ailesi yıldırım da bükebilirler.';
        avatarbaslik="ÖNEMLİ ATEŞ ULUSU SAVAŞCILARI";
        renk=Colors.red[600];
        quizresim=AssetImage("assets/quiz.jpg");
        detayaciklama=''' Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu'nu yöneten Kraliyet ailesi yıldırım da bükebilirler. Dünya'da beş yıldırım bükücü bulunur ve hepsi Ateş Ulusu kraliyet soyundandır.
   Kral Sozin ateş imparatorluğunun sınırlarını genişletmek ister ve yüzyıl sürecek savaşı başlatır. Avatar Roku buna izin vermeyeceğini söylese de Kral Sozin onu dinlemez ve Toprak Krallığına saldırır. Bunun üzerine Avatar Roku onunla savaşır ve onu mağlup eder. Yıllar sonra Sozin, Avatar Roku'yu volkan patlaması neticesinde oluşan zehir gazların arasında bırakır. Avatar Roku bu gazların etkisiyle bayılmış ve ölmüştür.
   Sozin bir sonraki Avatarın hava bükücü olduğunu biliyordu ve bunun için tüm Hava Tapınaklarına saldırdı. Dünyadaki Tüm Hava Bükücüler öldü fakat Aang savaştan önce kaçtığı için buzdağında avatar halinde kaldı. Kral Sozin hayatının geri kalanını Avatar'ı yakalamak için uğraştı ama boşuna vakit harcayaracak öldü.
   Onun Torunu Kral Ozai, Sozin Kuyrukluyıldızı'nın Ateş Bükücülere vereceği güç ile Savaşı bitirip kazanmak ister.     ''';
        karakterler = [
          'ZUKO',
          'IROH',
          'AZULA',
          'OZAİ',
          'ZHAO',
          'MAİ',
        ];
        ulusfoto=[
          'assets/atesulus1.jpg',
          'assets/atesulus2.jpg',
          'assets/atesulus3.png',
          'assets/atesulus4.png',
          'assets/atesulus5.jpg',
        ];
        stories = [
          'assets/zuko1.png',
          'assets/iroh1.jpg',
          'assets/azula1.jpg',
          'assets/ozai1.jpg',
          'assets/jao.png',
          'assets/mai1.jpg',
        ];
      }
    }
    if (ay == 4) {
      if (gun <= 19) {
        burc = "Koc";
        grup = "Ateş Ulusu";
        aciklama = "Koç burcu Ateş grubunda olduğu için Ateş Ulusundansın.";
        uzunaciklama='Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı\'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu\'nu yöneten Kraliyet ailesi yıldırım da bükebilirler.';
        renk=Colors.red[600];
        quizresim=AssetImage("assets/quiz.jpg");
        detayaciklama=''' Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu'nu yöneten Kraliyet ailesi yıldırım da bükebilirler. Dünya'da beş yıldırım bükücü bulunur ve hepsi Ateş Ulusu kraliyet soyundandır.
   Kral Sozin ateş imparatorluğunun sınırlarını genişletmek ister ve yüzyıl sürecek savaşı başlatır. Avatar Roku buna izin vermeyeceğini söylese de Kral Sozin onu dinlemez ve Toprak Krallığına saldırır. Bunun üzerine Avatar Roku onunla savaşır ve onu mağlup eder. Yıllar sonra Sozin, Avatar Roku'yu volkan patlaması neticesinde oluşan zehir gazların arasında bırakır. Avatar Roku bu gazların etkisiyle bayılmış ve ölmüştür.
   Sozin bir sonraki Avatarın hava bükücü olduğunu biliyordu ve bunun için tüm Hava Tapınaklarına saldırdı. Dünyadaki Tüm Hava Bükücüler öldü fakat Aang savaştan önce kaçtığı için buzdağında avatar halinde kaldı. Kral Sozin hayatının geri kalanını Avatar'ı yakalamak için uğraştı ama boşuna vakit harcayaracak öldü.
   Onun Torunu Kral Ozai, Sozin Kuyrukluyıldızı'nın Ateş Bükücülere vereceği güç ile Savaşı bitirip kazanmak ister.     ''';
        karakterler = [
          'ZUKO',
          'IROH',
          'AZULA',
          'OZAİ',
          'ZHAO',
          'MAİ',
        ];
        ulusfoto=[
          'assets/atesulus1.jpg',
          'assets/atesulus2.jpg',
          'assets/atesulus3.png',
          'assets/atesulus4.png',
          'assets/atesulus5.jpg',
        ];
        stories = [
          'assets/zuko1.png',
          'assets/iroh1.jpg',
          'assets/azula1.jpg',
          'assets/ozai1.jpg',
          'assets/jao.png',
          'assets/mai1.jpg',
        ];avatarbaslik="ÖNEMLİ ATEŞ ULUSU SAVAŞCILARI";
      }
      if (gun > 19) {
        burc = "Boga";
        grup = "Toprak Krallığı";
        aciklama =
        "Boğa burcu Toprak grubunda olduğu için Toprak Krallığındasın.";
        uzunaciklama='Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se\'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.';
        avatarbaslik="ÖNEMLİ TOPRAK KRALLIĞI SAVAŞCILARI";
        renk=Colors.green;
        quizresim=AssetImage("assets/quiz3.jpg");
        detayaciklama=''' Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.
   Yüz Yıl Savaşlarında ise Toprak Krallığı orduları Ateş Ulusuna karşı çetin bir mücadele verse de Omashu ve Ba Sing Se’in fethi ile mücadeleleri başarısız oldu. Dai Li gibi ordunun önemli birimleri Ateş Ulusuna katıldı. Bazı küçük gruplar Kara Güneş Gününde işgale katılsalar da yenilgi sebebiyle esir düştüler. Bu yenilgiye rağmen bazı Toprak Krallığı birimleri Anka Kralı Ozai’in sonu gelene kadar direnmeye devam ettiler.''';
        karakterler = [
          'TOPH',
          'BUMİ',
          'KYOSHİ',
          'SUKİ',
          'JET',
        ];
        ulusfoto=[
          'assets/toprakulus1.png',
          'assets/toprakulus2.jpg',
          'assets/toprakulus3.jpg',
          'assets/toprakulus4.jpg',
          'assets/toprakulus5.png',
        ];
        stories = [
          'assets/toph1.jpg',
          'assets/bumi1.png',
          'assets/kyoshi.png',
          'assets/suki1.png',
          'assets/Jet.png',
        ];
      }
    }
    if (ay == 5) {
      if (gun <= 20) {
        burc = "Boga";
        grup = "Toprak Krallığı";
        aciklama =
        "Boğa burcu Toprak grubunda olduğu için Toprak Krallığındasın.";
        uzunaciklama='Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se\'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.';
        avatarbaslik="ÖNEMLİ TOPRAK KRALLIĞI SAVAŞCILARI";
        renk=Colors.green;
        detayaciklama=''' Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.
   Yüz Yıl Savaşlarında ise Toprak Krallığı orduları Ateş Ulusuna karşı çetin bir mücadele verse de Omashu ve Ba Sing Se’in fethi ile mücadeleleri başarısız oldu. Dai Li gibi ordunun önemli birimleri Ateş Ulusuna katıldı. Bazı küçük gruplar Kara Güneş Gününde işgale katılsalar da yenilgi sebebiyle esir düştüler. Bu yenilgiye rağmen bazı Toprak Krallığı birimleri Anka Kralı Ozai’in sonu gelene kadar direnmeye devam ettiler.''';
        quizresim=AssetImage("assets/quiz3.jpg");
        karakterler = [
          'TOPH',
          'BUMİ',
          'KYOSHİ',
          'SUKİ',
          'JET',
        ];
        ulusfoto=[
          'assets/toprakulus1.png',
          'assets/toprakulus2.jpg',
          'assets/toprakulus3.jpg',
          'assets/toprakulus4.jpg',
          'assets/toprakulus5.png',
        ];
        stories = [
          'assets/toph1.jpg',
          'assets/bumi1.png',
          'assets/kyoshi.png',
          'assets/suki1.png',
          'assets/Jet.png',
        ];
      }
      if (gun > 20) {
        burc = "Ikizler";
        grup = "Hava Gezginleri";
        aciklama =
        "İkizler burcu Hava grubunda olduğu için Hava Gezginisin.";
        uzunaciklama='Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar.';
        avatarbaslik="ÖNEMLİ HAVA GEZGİNİ SAVAŞCILARI";
        renk=Colors.blueAccent[100];
        detayaciklama='''  Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Batı Hava Tapınağı, Kuzey Hava Tapınağı, Doğu Hava Tapınağı ve Güney Hava Tapınağı olmak üzere toplam 4 tapınaktan oluşur. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar. Devletleri olmadığı için orduları da olmamıştır.   ''';
        quizresim=AssetImage("assets/quiz2.jpg");
        karakterler = [
          'AANG',
          'GYATSO',
          'PASANG',
          'TASHİ',
        ];
        ulusfoto=[
          'assets/havaulus1.jpg',
          'assets/havaulus2.png',
          'assets/havaulus3.png',
          'assets/havaulus4.png',
        ];
        stories = [
          'assets/aang1.jpg',
          'assets/gyatso.png',
          'assets/pasang.png',
          'assets/tashi.png',
        ];
      }
    }
    if (ay == 6) {
      if (gun <= 21) {
        burc = "Ikizler";
        grup = "Hava Gezginleri";
        aciklama =
        "İkizler burcu Hava grubunda olduğu için Hava Gezginisin.";
        uzunaciklama='Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar.';
        avatarbaslik="ÖNEMLİ HAVA GEZGİNİ SAVAŞCILARI";
        renk=Colors.blueAccent[100];
        detayaciklama='''  Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Batı Hava Tapınağı, Kuzey Hava Tapınağı, Doğu Hava Tapınağı ve Güney Hava Tapınağı olmak üzere toplam 4 tapınaktan oluşur. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar. Devletleri olmadığı için orduları da olmamıştır.   ''';
        quizresim=AssetImage("assets/quiz2.jpg");
        karakterler = [
          'AANG',
          'GYATSO',
          'PASANG',
          'TASHİ',
        ];
        ulusfoto=[
          'assets/havaulus1.jpg',
          'assets/havaulus2.png',
          'assets/havaulus3.png',
          'assets/havaulus4.png',
        ];
        stories = [
          'assets/aang1.jpg',
          'assets/gyatso.png',
          'assets/pasang.png',
          'assets/tashi.png',
        ];
      }
      if (gun > 21) {
        burc = "Yengec";
        grup = "Su Kabilesi";
        aciklama = "Yengeç burcu Su grubunda olduğu için Su Kabilesindensin.";
        uzunaciklama='Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı su bükücüler kan bükebilmektedirler. Toprak Krallığı\'nda bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.';
        avatarbaslik="ÖNEMLİ SU KABİLESİ SAVAŞCILARI";
        renk=Colors.lightBlue;
        detayaciklama='''     Su kabilesi üyelerinin ve su bükücülerin ana vatanıdır. Su Kabilesi halkı genellikle barışçıldır, doğa ve dünyanın diğer ulusları ile uyum içinde yaşamaya çalışırlar. Güney su kabilesi, Ateş Ulusu'nun bitmek bilmeyen akınlarına uğradığı için geri kalmış ve su bükücülerinin neredeyse hepsi yok edilmiştir. Kuzey Su Kabilesi ise gelişmiş bir yerdir. Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı güçlü su bükücüler kan bükebilmektedirler. Toprak Krallığı'nda bulunan bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.''';
        quizresim=AssetImage("assets/quiz1.jpg");
        karakterler = [
          'KATARA',
          'ARNOOK',
          'PAKKU',
          'SOKKA',
          'HAKODA',
        ];
        ulusfoto=[
          'assets/suulus1.png',
          'assets/suulus2.jpg',
          'assets/suulus3.jpg',
          'assets/suulus4.png',
          'assets/suulus5.png',
        ];
        stories = [
          'assets/katara.jpg',
          'assets/arnook.png',
          'assets/pakku.png',
          'assets/sokka.png',
          'assets/hakoda.png',
        ];
      }
    }
    if (ay == 7) {
      if (gun <= 22) {
        burc = "Yengec";
        grup = "Su Kabilesi";
        aciklama = "Yengeç burcu Su grubunda olduğu için Su Kabilesindensin.";
        uzunaciklama='Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı su bükücüler kan bükebilmektedirler. Toprak Krallığı\'nda bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.';
        avatarbaslik="ÖNEMLİ SU KABİLESİ SAVAŞCILARI";
        renk=Colors.lightBlue;
        detayaciklama='''     Su kabilesi üyelerinin ve su bükücülerin ana vatanıdır. Su Kabilesi halkı genellikle barışçıldır, doğa ve dünyanın diğer ulusları ile uyum içinde yaşamaya çalışırlar. Güney su kabilesi, Ateş Ulusu'nun bitmek bilmeyen akınlarına uğradığı için geri kalmış ve su bükücülerinin neredeyse hepsi yok edilmiştir. Kuzey Su Kabilesi ise gelişmiş bir yerdir. Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı güçlü su bükücüler kan bükebilmektedirler. Toprak Krallığı'nda bulunan bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.''';
        quizresim=AssetImage("assets/quiz1.jpg");
        karakterler = [
          'KATARA',
          'ARNOOK',
          'PAKKU',
          'SOKKA',
          'HAKODA',
        ];
        ulusfoto=[
          'assets/suulus1.png',
          'assets/suulus2.jpg',
          'assets/suulus3.jpg',
          'assets/suulus4.png',
          'assets/suulus5.png',
        ];
        stories = [
          'assets/katara.jpg',
          'assets/arnook.png',
          'assets/pakku.png',
          'assets/sokka.png',
          'assets/hakoda.png',
        ];
      }
        if (gun > 22) {
          burc = "Aslan";
          grup = "Ateş Ulusu";
          aciklama = "Aslan burcu Ateş grubunda olduğu için Ateş Ulusundansın.";
          uzunaciklama='Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı\'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu\'nu yöneten Kraliyet ailesi yıldırım da bükebilirler.';
          avatarbaslik="ÖNEMLİ ATEŞ ULUSU SAVAŞCILARI";
          renk=Colors.red[600];
          quizresim=AssetImage("assets/quiz.jpg");
          detayaciklama=''' Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu'nu yöneten Kraliyet ailesi yıldırım da bükebilirler. Dünya'da beş yıldırım bükücü bulunur ve hepsi Ateş Ulusu kraliyet soyundandır.
   Kral Sozin ateş imparatorluğunun sınırlarını genişletmek ister ve yüzyıl sürecek savaşı başlatır. Avatar Roku buna izin vermeyeceğini söylese de Kral Sozin onu dinlemez ve Toprak Krallığına saldırır. Bunun üzerine Avatar Roku onunla savaşır ve onu mağlup eder. Yıllar sonra Sozin, Avatar Roku'yu volkan patlaması neticesinde oluşan zehir gazların arasında bırakır. Avatar Roku bu gazların etkisiyle bayılmış ve ölmüştür.
   Sozin bir sonraki Avatarın hava bükücü olduğunu biliyordu ve bunun için tüm Hava Tapınaklarına saldırdı. Dünyadaki Tüm Hava Bükücüler öldü fakat Aang savaştan önce kaçtığı için buzdağında avatar halinde kaldı. Kral Sozin hayatının geri kalanını Avatar'ı yakalamak için uğraştı ama boşuna vakit harcayaracak öldü.
   Onun Torunu Kral Ozai, Sozin Kuyrukluyıldızı'nın Ateş Bükücülere vereceği güç ile Savaşı bitirip kazanmak ister.     ''';
          karakterler = [
            'ZUKO',
            'IROH',
            'AZULA',
            'OZAİ',
            'ZHAO',
            'MAİ',
          ];
          ulusfoto=[
            'assets/atesulus1.jpg',
            'assets/atesulus2.jpg',
            'assets/atesulus3.png',
            'assets/atesulus4.png',
            'assets/atesulus5.jpg',
          ];
          stories = [
            'assets/zuko1.png',
            'assets/iroh1.jpg',
            'assets/azula1.jpg',
            'assets/ozai1.jpg',
            'assets/jao.png',
            'assets/mai1.jpg',
          ];
        }
      }
      if (ay == 8) {
        if (gun <= 22) {
          burc = "Aslan";
          grup = "Ateş Ulusu";
          aciklama = "Aslan burcu Ateş grubunda olduğu için Ateş Ulusundansın.";
          uzunaciklama='Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı\'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu\'nu yöneten Kraliyet ailesi yıldırım da bükebilirler.';
          avatarbaslik="ÖNEMLİ ATEŞ ULUSU SAVAŞCILARI";
          renk=Colors.red[600];
          quizresim=AssetImage("assets/quiz.jpg");
          detayaciklama=''' Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu'nu yöneten Kraliyet ailesi yıldırım da bükebilirler. Dünya'da beş yıldırım bükücü bulunur ve hepsi Ateş Ulusu kraliyet soyundandır.
   Kral Sozin ateş imparatorluğunun sınırlarını genişletmek ister ve yüzyıl sürecek savaşı başlatır. Avatar Roku buna izin vermeyeceğini söylese de Kral Sozin onu dinlemez ve Toprak Krallığına saldırır. Bunun üzerine Avatar Roku onunla savaşır ve onu mağlup eder. Yıllar sonra Sozin, Avatar Roku'yu volkan patlaması neticesinde oluşan zehir gazların arasında bırakır. Avatar Roku bu gazların etkisiyle bayılmış ve ölmüştür.
   Sozin bir sonraki Avatarın hava bükücü olduğunu biliyordu ve bunun için tüm Hava Tapınaklarına saldırdı. Dünyadaki Tüm Hava Bükücüler öldü fakat Aang savaştan önce kaçtığı için buzdağında avatar halinde kaldı. Kral Sozin hayatının geri kalanını Avatar'ı yakalamak için uğraştı ama boşuna vakit harcayaracak öldü.
   Onun Torunu Kral Ozai, Sozin Kuyrukluyıldızı'nın Ateş Bükücülere vereceği güç ile Savaşı bitirip kazanmak ister.     ''';
          karakterler = [
            'ZUKO',
            'IROH',
            'AZULA',
            'OZAİ',
            'ZHAO',
            'MAİ',
          ];
          ulusfoto=[
            'assets/atesulus1.jpg',
            'assets/atesulus2.jpg',
            'assets/atesulus3.png',
            'assets/atesulus4.png',
            'assets/atesulus5.jpg',
          ];
          stories = [
            'assets/zuko1.png',
            'assets/iroh1.jpg',
            'assets/azula1.jpg',
            'assets/ozai1.jpg',
            'assets/jao.png',
            'assets/mai1.jpg',
          ];
        }
        if (gun > 22) {
          burc = "Basak";
          grup = "Toprak Krallığı";
          aciklama =
          "Başak burcu Toprak grubunda olduğu için Toprak Krallığındasın.";
          uzunaciklama='Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se\'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.';
          avatarbaslik="ÖNEMLİ TOPRAK KRALLIĞI SAVAŞCILARI";
          renk=Colors.green;
          quizresim=AssetImage("assets/quiz3.jpg");
          detayaciklama=''' Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.
   Yüz Yıl Savaşlarında ise Toprak Krallığı orduları Ateş Ulusuna karşı çetin bir mücadele verse de Omashu ve Ba Sing Se’in fethi ile mücadeleleri başarısız oldu. Dai Li gibi ordunun önemli birimleri Ateş Ulusuna katıldı. Bazı küçük gruplar Kara Güneş Gününde işgale katılsalar da yenilgi sebebiyle esir düştüler. Bu yenilgiye rağmen bazı Toprak Krallığı birimleri Anka Kralı Ozai’in sonu gelene kadar direnmeye devam ettiler.''';
          karakterler = [
            'TOPH',
            'BUMİ',
            'KYOSHİ',
            'SUKİ',
            'JET',
          ];
          ulusfoto=[
            'assets/toprakulus1.png',
            'assets/toprakulus2.jpg',
            'assets/toprakulus3.jpg',
            'assets/toprakulus4.jpg',
            'assets/toprakulus5.png',
          ];
          stories = [
            'assets/toph1.jpg',
            'assets/bumi1.png',
            'assets/kyoshi.png',
            'assets/suki1.png',
            'assets/Jet.png',
          ];
        }
      }
      if (ay == 9) {
        if (gun <= 22) {
          burc = "Basak";
          grup = "Toprak Krallığı";
          aciklama =
          "Başak burcu Toprak grubunda olduğu için Toprak Krallığındasın.";
          uzunaciklama='Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se\'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.';
          avatarbaslik="ÖNEMLİ TOPRAK KRALLIĞI SAVAŞCILARI";
          renk=Colors.green;
          detayaciklama=''' Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.
   Yüz Yıl Savaşlarında ise Toprak Krallığı orduları Ateş Ulusuna karşı çetin bir mücadele verse de Omashu ve Ba Sing Se’in fethi ile mücadeleleri başarısız oldu. Dai Li gibi ordunun önemli birimleri Ateş Ulusuna katıldı. Bazı küçük gruplar Kara Güneş Gününde işgale katılsalar da yenilgi sebebiyle esir düştüler. Bu yenilgiye rağmen bazı Toprak Krallığı birimleri Anka Kralı Ozai’in sonu gelene kadar direnmeye devam ettiler.''';
          quizresim=AssetImage("assets/quiz3.jpg");
          karakterler = [
            'TOPH',
            'BUMİ',
            'KYOSHİ',
            'SUKİ',
            'JET',
          ];
          ulusfoto=[
            'assets/toprakulus1.png',
            'assets/toprakulus2.jpg',
            'assets/toprakulus3.jpg',
            'assets/toprakulus4.jpg',
            'assets/toprakulus5.png',
          ];
          stories = [
            'assets/toph1.jpg',
            'assets/bumi1.png',
            'assets/kyoshi.png',
            'assets/suki1.png',
            'assets/Jet.png',
          ];
        }
        if (gun > 22) {
          burc = "Terazi";
          grup = "Hava Gezginleri";
          aciklama =
          "Terazi burcu Hava grubunda olduğu için Hava Gezginisin.";
          uzunaciklama='Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar.';
          avatarbaslik="ÖNEMLİ HAVA GEZGİNİ SAVAŞCILARI";
          renk=Colors.blueAccent[100];
          detayaciklama='''  Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Batı Hava Tapınağı, Kuzey Hava Tapınağı, Doğu Hava Tapınağı ve Güney Hava Tapınağı olmak üzere toplam 4 tapınaktan oluşur. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar. Devletleri olmadığı için orduları da olmamıştır.   ''';
          quizresim=AssetImage("assets/quiz2.jpg");
          karakterler = [
            'AANG',
            'GYATSO',
            'PASANG',
            'TASHİ',
          ];
          ulusfoto=[
            'assets/havaulus1.jpg',
            'assets/havaulus2.png',
            'assets/havaulus3.png',
            'assets/havaulus4.png',
          ];
          stories = [
            'assets/aang1.jpg',
            'assets/gyatso.png',
            'assets/pasang.png',
            'assets/tashi.png',
          ];
        }
      }
      if (ay == 10) {
        if (gun <= 22) {
          burc = "Terazi";
          grup = "Hava Gezginleri";
          aciklama =
          "Terazi burcu Hava grubunda olduğu için Hava Gezginisin.";
          uzunaciklama='Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar.';
          avatarbaslik="ÖNEMLİ HAVA GEZGİNİ SAVAŞCILARI";
          renk=Colors.blueAccent[100];
          detayaciklama='''  Hava bükücülerin ana vatanıdır. Tüm hava gezginleri hava bükebilmektedir. Ateş Ulusu, bütün Hava Gezginlerini soykırıma uğrattığı için Aang hariç dünyada hiçbir hava bükücü kalmamıştır. Batı Hava Tapınağı, Kuzey Hava Tapınağı, Doğu Hava Tapınağı ve Güney Hava Tapınağı olmak üzere toplam 4 tapınaktan oluşur. Hava elementini bükerler. Hava Gezginleri diğer uluslara nazaran bir devlet değildir ve göçebe yaşarlar. Devletleri olmadığı için orduları da olmamıştır.   ''';
          quizresim=AssetImage("assets/quiz2.jpg");
          karakterler = [
            'AANG',
            'GYATSO',
            'PASANG',
            'TASHİ',
          ];
          ulusfoto=[
            'assets/havaulus1.jpg',
            'assets/havaulus2.png',
            'assets/havaulus3.png',
            'assets/havaulus4.png',
          ];
          stories = [
            'assets/aang1.jpg',
            'assets/gyatso.png',
            'assets/pasang.png',
            'assets/tashi.png',
          ];
        }
        if (gun > 22) {
          burc = "Akrep";
          grup = "Su Kabilesi";
          aciklama = "Akrep burcu Su grubunda olduğu için Su Kabilesindensin.";
          uzunaciklama='Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı su bükücüler kan bükebilmektedirler. Toprak Krallığı\'nda bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.';
          avatarbaslik="ÖNEMLİ SU KABİLESİ SAVAŞCILARI";
          renk=Colors.lightBlue;
          detayaciklama='''     Su kabilesi üyelerinin ve su bükücülerin ana vatanıdır. Su Kabilesi halkı genellikle barışçıldır, doğa ve dünyanın diğer ulusları ile uyum içinde yaşamaya çalışırlar. Güney su kabilesi, Ateş Ulusu'nun bitmek bilmeyen akınlarına uğradığı için geri kalmış ve su bükücülerinin neredeyse hepsi yok edilmiştir. Kuzey Su Kabilesi ise gelişmiş bir yerdir. Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı güçlü su bükücüler kan bükebilmektedirler. Toprak Krallığı'nda bulunan bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.''';
          quizresim=AssetImage("assets/quiz1.jpg");
          karakterler = [
            'KATARA',
            'ARNOOK',
            'PAKKU',
            'SOKKA',
            'HAKODA',
          ];
          ulusfoto=[
            'assets/suulus1.png',
            'assets/suulus2.jpg',
            'assets/suulus3.jpg',
            'assets/suulus4.png',
            'assets/suulus5.png',
          ];
          stories = [
            'assets/katara.jpg',
            'assets/arnook.png',
            'assets/pakku.png',
            'assets/sokka.png',
            'assets/hakoda.png',
          ];
        }
      }
      if (ay == 11) {
        if (gun <= 21) {
          burc = "Akrep";
          grup = "Su Kabilesi";
          aciklama = "Akrep burcu Su grubunda olduğu için Su Kabilesindensin.";
          uzunaciklama='Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı su bükücüler kan bükebilmektedirler. Toprak Krallığı\'nda bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.';
          avatarbaslik="ÖNEMLİ SU KABİLESİ SAVAŞCILARI";
          renk=Colors.lightBlue;
          detayaciklama='''     Su kabilesi üyelerinin ve su bükücülerin ana vatanıdır. Su Kabilesi halkı genellikle barışçıldır, doğa ve dünyanın diğer ulusları ile uyum içinde yaşamaya çalışırlar. Güney su kabilesi, Ateş Ulusu'nun bitmek bilmeyen akınlarına uğradığı için geri kalmış ve su bükücülerinin neredeyse hepsi yok edilmiştir. Kuzey Su Kabilesi ise gelişmiş bir yerdir. Su Kabilesi, Kuzey Su Kabilesi ve Güney Su Kabilesi olmak üzere toplam 2 kutuptan oluşur. Su elementini bükerler. Bazı güçlü su bükücüler kan bükebilmektedirler. Toprak Krallığı'nda bulunan bataklıkta yaşayan Su kabilesi kökenli insanlar bitkileri bükebilmektedir. Su aynı zamanda iyileştirme amaçlı kullanılabilmektedir.''';
          quizresim=AssetImage("assets/quiz1.jpg");
          karakterler = [
            'KATARA',
            'ARNOOK',
            'PAKKU',
            'SOKKA',
            'HAKODA',
          ];
          ulusfoto=[
            'assets/suulus1.png',
            'assets/suulus2.jpg',
            'assets/suulus3.jpg',
            'assets/suulus4.png',
            'assets/suulus5.png',
          ];
          stories = [
            'assets/katara.jpg',
            'assets/arnook.png',
            'assets/pakku.png',
            'assets/sokka.png',
            'assets/hakoda.png',
          ];
        }
        if (gun > 21) {
          burc = "Yay";
          grup = "Ateş Ulusu";
          aciklama = "Yay burcu Ateş grubunda olduğu için Ateş Ulusundansın.";
          uzunaciklama='Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı\'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu\'nu yöneten Kraliyet ailesi yıldırım da bükebilirler.';
          avatarbaslik="ÖNEMLİ ATEŞ ULUSU SAVAŞCILARI";
          renk=Colors.red[600];
          quizresim=AssetImage("assets/quiz.jpg");
          detayaciklama=''' Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu'nu yöneten Kraliyet ailesi yıldırım da bükebilirler. Dünya'da beş yıldırım bükücü bulunur ve hepsi Ateş Ulusu kraliyet soyundandır.
   Kral Sozin ateş imparatorluğunun sınırlarını genişletmek ister ve yüzyıl sürecek savaşı başlatır. Avatar Roku buna izin vermeyeceğini söylese de Kral Sozin onu dinlemez ve Toprak Krallığına saldırır. Bunun üzerine Avatar Roku onunla savaşır ve onu mağlup eder. Yıllar sonra Sozin, Avatar Roku'yu volkan patlaması neticesinde oluşan zehir gazların arasında bırakır. Avatar Roku bu gazların etkisiyle bayılmış ve ölmüştür.
   Sozin bir sonraki Avatarın hava bükücü olduğunu biliyordu ve bunun için tüm Hava Tapınaklarına saldırdı. Dünyadaki Tüm Hava Bükücüler öldü fakat Aang savaştan önce kaçtığı için buzdağında avatar halinde kaldı. Kral Sozin hayatının geri kalanını Avatar'ı yakalamak için uğraştı ama boşuna vakit harcayaracak öldü.
   Onun Torunu Kral Ozai, Sozin Kuyrukluyıldızı'nın Ateş Bükücülere vereceği güç ile Savaşı bitirip kazanmak ister.     ''';
          karakterler = [
            'ZUKO',
            'IROH',
            'AZULA',
            'OZAİ',
            'ZHAO',
            'MAİ',
          ];
          ulusfoto=[
            'assets/atesulus1.jpg',
            'assets/atesulus2.jpg',
            'assets/atesulus3.png',
            'assets/atesulus4.png',
            'assets/atesulus5.jpg',
          ];
          stories = [
            'assets/zuko1.png',
            'assets/iroh1.jpg',
            'assets/azula1.jpg',
            'assets/ozai1.jpg',
            'assets/jao.png',
            'assets/mai1.jpg',
          ];
        }
      }
      if (ay == 12) {
        if (gun <= 21) {
          burc = "Yay";
          grup = "Ateş Ulusu";
          aciklama = "Yay burcu Ateş grubunda olduğu için Ateş Ulusundansın.";
          uzunaciklama='Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı\'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu\'nu yöneten Kraliyet ailesi yıldırım da bükebilirler.';
          avatarbaslik="ÖNEMLİ ATEŞ ULUSU SAVAŞCILARI";
          renk=Colors.red[600];
          quizresim=AssetImage("assets/quiz.jpg");
          detayaciklama=''' Ateş Ulusu adaları yerlilerinin ve bükücülerin yaşadığı yerdir. Ateş Ulusu birçok volkan adasından ve adacıklardan oluşur. Bu nedenle Ateş Ulusu, Toprak Krallığı'nı işgal etmektedir. Ateş Ulusu yerlileri ateş elementini bükebilirler, Ateş Ulusu'nu yöneten Kraliyet ailesi yıldırım da bükebilirler. Dünya'da beş yıldırım bükücü bulunur ve hepsi Ateş Ulusu kraliyet soyundandır.
   Kral Sozin ateş imparatorluğunun sınırlarını genişletmek ister ve yüzyıl sürecek savaşı başlatır. Avatar Roku buna izin vermeyeceğini söylese de Kral Sozin onu dinlemez ve Toprak Krallığına saldırır. Bunun üzerine Avatar Roku onunla savaşır ve onu mağlup eder. Yıllar sonra Sozin, Avatar Roku'yu volkan patlaması neticesinde oluşan zehir gazların arasında bırakır. Avatar Roku bu gazların etkisiyle bayılmış ve ölmüştür.
   Sozin bir sonraki Avatarın hava bükücü olduğunu biliyordu ve bunun için tüm Hava Tapınaklarına saldırdı. Dünyadaki Tüm Hava Bükücüler öldü fakat Aang savaştan önce kaçtığı için buzdağında avatar halinde kaldı. Kral Sozin hayatının geri kalanını Avatar'ı yakalamak için uğraştı ama boşuna vakit harcayaracak öldü.
   Onun Torunu Kral Ozai, Sozin Kuyrukluyıldızı'nın Ateş Bükücülere vereceği güç ile Savaşı bitirip kazanmak ister.     ''';
          karakterler = [
            'ZUKO',
            'IROH',
            'AZULA',
            'OZAİ',
            'ZHAO',
            'MAİ',
          ];
          ulusfoto=[
            'assets/atesulus1.jpg',
            'assets/atesulus2.jpg',
            'assets/atesulus3.png',
            'assets/atesulus4.png',
            'assets/atesulus5.jpg',
          ];
          stories = [
            'assets/zuko1.png',
            'assets/iroh1.jpg',
            'assets/azula1.jpg',
            'assets/ozai1.jpg',
            'assets/jao.png',
            'assets/mai1.jpg',
          ];
        }
        if (gun > 21) {
          burc = "Oglak";
          grup = "Toprak Krallığı";
          aciklama =
          "Oğlak burcu Toprak grubunda olduğu için Toprak Krallığındasın.";
          uzunaciklama='Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se\'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.';
          avatarbaslik="ÖNEMLİ TOPRAK KRALLIĞI SAVAŞCILARI";
          renk=Colors.green;
          quizresim=AssetImage("assets/quiz3.jpg");
          detayaciklama=''' Toprak Krallığı yerlilerinin ve bükücülerin yaşadığı yerdir. Avatar dünyasındaki en geniş devlettir. Başkenti Ba Sing Se'dir. Ba Sing Se şehri Avatar dünyasındaki en büyük şehirdir. Bu krallıktaki insalar Toprak elementini bükebilirler, ayrıca kristal taş, lav, kum ve metali de bükebilirler.
   Yüz Yıl Savaşlarında ise Toprak Krallığı orduları Ateş Ulusuna karşı çetin bir mücadele verse de Omashu ve Ba Sing Se’in fethi ile mücadeleleri başarısız oldu. Dai Li gibi ordunun önemli birimleri Ateş Ulusuna katıldı. Bazı küçük gruplar Kara Güneş Gününde işgale katılsalar da yenilgi sebebiyle esir düştüler. Bu yenilgiye rağmen bazı Toprak Krallığı birimleri Anka Kralı Ozai’in sonu gelene kadar direnmeye devam ettiler.''';
          karakterler = [
            'TOPH',
            'BUMİ',
            'KYOSHİ',
            'SUKİ',
            'JET',
          ];
          ulusfoto=[
            'assets/toprakulus1.png',
            'assets/toprakulus2.jpg',
            'assets/toprakulus3.jpg',
            'assets/toprakulus4.jpg',
            'assets/toprakulus5.png',
          ];
          stories = [
            'assets/toph1.jpg',
            'assets/bumi1.png',
            'assets/kyoshi.png',
            'assets/suki1.png',
            'assets/Jet.png',
          ];
        }
      }
    }
  }
