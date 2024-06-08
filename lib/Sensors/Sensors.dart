// ignore: unused_import
import 'dart:async';
import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Sensors extends StatelessWidget {
  const Sensors({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          body: Center(
            child: AnimatedAlignExample(),
          ),
        ),
      ),
    );
  }
}

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool selected = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer(const Duration(seconds: 10), () {
      setState(() {
        selected = !selected;
      });
      _startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _startTimer();
      },
      child: Center(
        child: Container(
          child: AnimatedAlign(
              alignment:
                  selected ? Alignment.bottomRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 10),
              curve: Curves.fastOutSlowIn,
              child: Image.asset('imagenes/paneta.png')),
        ),
      ),
    );
  }
}


/*
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
*/