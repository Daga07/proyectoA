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
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TabBar(
              tabs: <Widget>[
                Tab(
  child: Container(
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(10),
    ),
    padding: EdgeInsets.all(8),
    child: Icon(Icons.sensors),
  ),
),
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
