class Karakter{
  int _id;
  String _name;
  String _aciklama;
  String _ulus;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  String get ulus => _ulus;

  set ulus(String value) {
    _ulus = value;
  }

  String get aciklama => _aciklama;

  set aciklama(String value) {
    _aciklama = value;
  }

  set name(String value) {
    _name = value;
  }

  Karakter(this._name, this._aciklama, this._ulus);
  Karakter.withID(this._id,this._name, this._aciklama, this._ulus);

  Map<String, dynamic> dbyeYazmakIcinMapeDonustur(){

    var map = Map<String, dynamic>();
    map['id']=_id;
    map['name']=_name;
    map['aciklama']=_aciklama;
    map['ulus']=_ulus;

    return map;
  }
  Karakter.dbdenOkudugunMapiObjeyeDonustur(Map<String, dynamic> map){
    this._id = map['id'];
    this._name = map['name'];
    this._aciklama = map['aciklama'];
    this._ulus = map['ulus'];
  }

  @override
  String toString() {
    return 'Karakter{_id: $_id, _name: $_name, _aciklama: $_aciklama, _ulus: $_ulus}';
  }
}