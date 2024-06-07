// ignore: unused_import
import 'dart:js_interop';
import 'package:flutter/material.dart';

class Sensors extends StatelessWidget {
  const Sensors({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: const Color.fromARGB(255, 51, 243, 33), width: 1)),
        child: Scaffold(
          body: Center(
            child: Screen_sensors(context),
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Screen_sensors(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(height: 10),
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 220,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 158, 252, 8),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 220,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 128, 85, 65),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 220,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 158, 252, 8),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 220,
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 128, 85, 65),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
