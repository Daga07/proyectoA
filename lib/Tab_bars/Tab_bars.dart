// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Plant/Plant.dart';
import 'package:proyecto/Sensors/Sensors.dart';

// ignore: camel_case_types
class Tan_bars extends StatelessWidget {
  const Tan_bars({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: const Color.fromARGB(255, 217, 243, 239),
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Image(image: AssetImage("imagenes/sensor.gif")),
          ),
          const BottomNavigationBarItem(
            icon: Image(image: AssetImage("imagenes/light.gif")),
          ),
          const BottomNavigationBarItem(
            icon: Image(image: AssetImage("imagenes/info.gif")),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        late Widget selectedWidget;
        switch (index) {
          case 0:
            selectedWidget = const Sensors();
            break;
          case 1:
            selectedWidget = const Plant();
            break;
          case 2:
            selectedWidget = const Help();
            break;
          default:
            selectedWidget = const SizedBox.shrink();
        }
        return CupertinoTabView(
          builder: (BuildContext context) => selectedWidget,
        );
      },
    );
  }
}
