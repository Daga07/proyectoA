import 'dart:async';
import 'package:flutter/material.dart';

class Animacion extends StatelessWidget {
   const Animacion({super.key});
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: AnimatedAlignExample(),
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
    Timer(const Duration(seconds: 5), () {
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
      child: AnimatedAlign(
        alignment: selected ? Alignment.bottomRight : Alignment.bottomLeft,
        duration: const Duration(seconds: 7),
        curve: Curves.fastOutSlowIn,
        child: Container(
          width: 25,  // Ancho de la imagen
          height: 25,  // Altura de la imagen
          child: Image.asset(
            'imagenes/natur.png',
            fit: BoxFit.cover,  // Ajusta la imagen para cubrir el contenedor
          ),
        ),
      ),
    ),
  );
}

}
