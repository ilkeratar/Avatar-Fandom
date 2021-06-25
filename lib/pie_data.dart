import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Su', percent: 23, color: const Color(0xff0471b6)),
    Data(name: 'Ateş', percent: 46, color: const Color(0xffef0202)),
    Data(name: 'Hava', percent: 8, color: const Color(0xff5db7db)),
    Data(name: 'Toprak', percent: 23, color: const Color(0xff21580d)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}