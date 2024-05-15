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
      return  const DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: <Widget>[
              TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.sensors),
                  ),
                  Tab(
                    icon: Icon(Icons.yard_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.align_horizontal_left),
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
