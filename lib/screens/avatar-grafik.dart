import 'package:avatar_fandom/pie_chart_sections.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AvatarGrafik extends StatefulWidget {
  @override
  _AvatarGrafikState createState() => _AvatarGrafikState();
}

class _AvatarGrafikState extends State<AvatarGrafik> {
  int touchedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Karakterlerin Ulus Dağılım Grafiği "),),
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          height: 270,
          child: PieChart(
              PieChartData(
                borderData: FlBorderData(show: false),
                sectionsSpace: 6,
                centerSpaceRadius: 40,
                sections: getSections(touchedIndex),
              )
          ),
        ),
      ),
    );
  }
}
