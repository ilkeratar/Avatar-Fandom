import 'soru.dart';

class TestVerileri{
  int _soruIndex=0;

  List<Soru> _soruBankasi=[
    Soru(soruMetni:'Avatar Aangden önceki Avatar Rokudur',soruYaniti:true),
    Soru(soruMetni:'Azula ve Zuko üvey kardeşlerdir',soruYaniti:false),
    Soru(soruMetni:'Aang\'in biyolojik yaşı 112\'dir.',soruYaniti:true),
    Soru(soruMetni:'Toph görme ve işitme engellidir',soruYaniti:false),
    Soru(soruMetni:'Görseldeki Toprak Krallığı şehri Ba Sing Se\'dir.',soruYaniti:false),
    Soru(soruMetni:'Katara kan bükebilen nadir bükücülerdendir.',soruYaniti:true),
    Soru(soruMetni:'Ateş Kralı Ozai Sozin Kuyruklu Yıldızının gücü ile savaşı bitirmeyi planlamaktadır.',soruYaniti:true),
    Soru(soruMetni:'Zukonun annesi kanser sebebi ile ölmüştür.',soruYaniti:false),
  ];
  List<String> _pictures=['roku.jpg','azula.jpg','aang2.png','tophquiz.png','omashu.jpg','kataraquiz.jpg','sozin.jpg','zukomom.jpg'];


  String getPicture(){
    return _pictures[_soruIndex];
  }

  String getSoruMetni(){
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti(){
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru(){
    if(_soruIndex+1<_soruBankasi.length)
      _soruIndex++;
  }

  void testiSifirla(){
    _soruIndex=0;
  }

  bool testBittiMi(){

    if(_soruIndex+1>=_soruBankasi.length){
      return true;
    }else{return false;}
  }


}