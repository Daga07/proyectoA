// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Login/Loge.dart';
// ignore: unused_import
import 'package:proyecto/Record/Record.dart';
// ignore: unused_import
import 'package:proyecto/Sensors/Sensors.dart';
// ignore: unused_import
import 'package:proyecto/Tab_bars/Tab_bars.dart';

void main() {
  runApp(const Tower());
}

class Tower extends StatelessWidget {
  const Tower({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: Menu(context),
      ),
    );
  }
}

Widget Menu(context) {
  return Scaffold(
    appBar: PreferredSize(
      // Altura personalizada del AppBar
      preferredSize:
          const Size.fromHeight(20), // Altura personalizada del AppBar
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10), // Radio de borde en la parte inferior
          ),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(248, 53, 119, 51),
              Color.fromARGB(167, 160, 61, 122),
            ], // Colores del degradado
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: AppBar(
          backgroundColor: const Color.fromARGB(
              0, 102, 10, 10), // Hace que el AppBar sea transparente
          elevation: 0, // Elimina la sombra del AppBar
        ),
      ),
    ),
    body: Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255), // Color de fondo del cuerpo
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 30),
            ContainerAnimado(context),
            const SizedBox(height: 60),
            Loge(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    ),
  );
}

Widget ImganeRadio() {
  return SizedBox(
    child: const Image(
        image: AssetImage("imagenes/towerucev.png"), fit: BoxFit.contain),
  );
}

//record

Widget ContainerAnimado(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  return Container(
    width: 120, // 80% del ancho de la pantalla
    height: 100, // 50% de la altura de la pantalla
    child: DecoratedBoxTransitionExample(),
  );
}

class DecoratedBoxTransitionExample extends StatefulWidget {
  const DecoratedBoxTransitionExample({super.key});

  @override
  State<DecoratedBoxTransitionExample> createState() =>
      _DecoratedBoxTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _DecoratedBoxTransitionExampleState
    extends State<DecoratedBoxTransitionExample> with TickerProviderStateMixin {
  final DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Color.fromARGB(255, 255, 242, 250),
      border: Border.all(style: BorderStyle.solid),
      borderRadius: BorderRadius.circular(28),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color.fromARGB(255, 0, 0, 0),
          blurRadius: 10.0,
          spreadRadius: 3.0,
          offset: Offset(0, 1.0),
        ),
      ],
    ),
    end: BoxDecoration(
      color: Color.fromARGB(255, 239, 248, 238),
      border: Border.all(
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.zero,
      // No shadow.
    ),
  );

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ColoredBox(
        color: Colors.white,
        child: Center(
          child: DecoratedBoxTransition(
            decoration: decorationTween.animate(_controller),
            child: Center(
              child: SizedBox(
                width: 100, //  del ancho de la pantalla
                height: 100, //  de la altura de la pantalla
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        child: ImganeRadio(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
