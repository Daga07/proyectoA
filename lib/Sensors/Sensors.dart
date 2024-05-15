
// ignore: unused_import
import 'dart:js_interop';
import 'package:flutter/material.dart';

class Sensors extends StatelessWidget {
  const Sensors({super.key});
  @override
  Widget build(BuildContext context) {
      return Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 102, 0, 150),
          ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20),
                  Screen_sensors(),
                ],
              ),
          ),
     );
  } 
}
// ignore: non_constant_identifier_names
Widget Screen_sensors(){
  return Column(
    children: [
      Column(
        children: [
          Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 220,
                    height: 180,
                     decoration: const BoxDecoration(
                     color: Color.fromARGB(255, 158, 252, 8),
                    ),
                  ),
                  const SizedBox(width:10), 
                  Container(
                    width: 220,
                    height: 180,
                     decoration: const BoxDecoration(
                     color: Color.fromARGB(255, 128, 85, 65),
                    ),
                  )
                ],
          ),
        ],
      ),
      const SizedBox(height: 20),
        Column(
        children: [
          Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 220,
                    height: 180,
                     decoration: const BoxDecoration(
                     color: Color.fromARGB(255, 158, 252, 8),
                    ),
                  ),
                  const SizedBox(width:10), 
                  Container(
                    width: 220,
                    height: 180,
                     decoration: const BoxDecoration(
                     color: Color.fromARGB(255, 128, 85, 65),
                    ),
                  )
                ],
          ),
        ],
      )
    ],
  );
}