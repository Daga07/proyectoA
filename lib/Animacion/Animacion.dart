import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;


class Animacion extends StatelessWidget {
   const Animacion({super.key});
  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizeRotationAnimationWidget(),
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
        child: SizedBox(
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

class SizeRotationAnimationWidget extends StatefulWidget {
  const SizeRotationAnimationWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SizeRotationAnimationWidgetState createState() =>
      _SizeRotationAnimationWidgetState();
}

class _SizeRotationAnimationWidgetState
    extends State<SizeRotationAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();

    _sizeAnimation =
        Tween<double>(begin: 50.0, end: 50.0).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Center(
        child: Image.asset(
          'imagenes/planta.png',
          fit: BoxFit.cover,  // Ajusta la imagen para cubrir el contenedor
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: SizedBox(
            width: _sizeAnimation.value,
            height: _sizeAnimation.value,
            child: child,
          ),
        );
      },
    );
    }
    }
    