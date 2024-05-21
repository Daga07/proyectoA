// ignore: file_names
import 'package:flutter/material.dart';
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Plant/Plant.dart';
import 'package:proyecto/Sensors/Sensors.dart';

// ignore: camel_case_types
class Tan_bars extends StatelessWidget {
  const Tan_bars({super.key});
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TabBar(
              dividerColor: Color.fromRGBO(3, 142, 255, 1),
              overlayColor:
                  MaterialStatePropertyAll(Color.fromARGB(255, 225, 252, 216)),
              indicator:
                  BoxDecoration(color: Color.fromARGB(255, 241, 216, 247)),
              tabs: <Widget>[
                Tab(
                  child: Image(image: AssetImage("imagenes/sensor.gif")),
                ),
                Tab(
                  child: Image(image: AssetImage("imagenes/light.gif")),
                ),
                Tab(
                  child: Image(image: AssetImage("imagenes/info.gif")),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Sensors(),
                  Plant(),
                  Help(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
