// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:math' as math;

class Sensors extends StatelessWidget {
  const Sensors({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: const Scaffold(
          body: Center(
            child: CrossFadeExample(),
          ),
        ),
      ),
    );
  }
}

class CrossFadeExample extends StatefulWidget {
  const CrossFadeExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CrossFadeExampleState createState() => _CrossFadeExampleState();
}

class _CrossFadeExampleState extends State<CrossFadeExample> {
  bool _first = true;

  void _toggleCrossFade() {
    setState(() {
      _first = !_first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 202, 255, 11),
            width: 0.2,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            duration: const Duration(seconds: 3),
            firstChild: Image.asset("imagenes/lechuga.png"),
            secondChild: const Column(children: <Widget>[
               Text(
                  "Lechugas mucho más limpias ya de origen y que no necesitan ser tratadas con potentes desinfectantes"),
            ]),
            crossFadeState:
                _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          const SizedBox(height: 2),
          ElevatedButton(
            onPressed: _toggleCrossFade,
            child: const Text('Lechugas'),
          ),
        ],
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
