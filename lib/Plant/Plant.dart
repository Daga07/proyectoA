// ignore_for_file: file_names, sized_box_for_whitespace
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proyecto/Sesion/sesion.dart';

class Plant extends StatelessWidget {
  const Plant({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: usurio()
        // Color de fondo del Scaffold
        );
  }
}

Widget usurio() {
  return Scaffold(
    appBar: AppBar(
      toolbarHeight: 40, // Define la altura del AppBar
      elevation: 4, // Aumenta la elevación del AppBar
      //  backgroundColor: Colors.amber, // color del AppBAr
      //shadowColor: const Color.fromARGB(  255, 124, 244, 54), // Color personalizado para la sombra
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
    ),
    body: const Center(
      child: PlantInformation(),
    ),
    drawer: sesion(),
  );
}

/* 
topLeft: Radius.circular(10.0) define un radio de 10.0 para la esquina superior izquierda.
topRight: Radius.circular(20.0) define un radio de 20.0 para la esquina superior derecha.
bottomLeft: Radius.circular(30.0) define un radio de 30.0 para la esquina inferior izquierda.
bottomRight: Radius.circular(40.0) define un radio de 40.0 para la esquina inferior derecha.
      */

class PlantInformation extends StatefulWidget {
  const PlantInformation({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _PlantInformationState createState() => _PlantInformationState();
}

class _PlantInformationState extends State<PlantInformation> {
  bool _first = true;
  bool _first1 = true;
  bool _first2 = true;
  bool _first3 = true;
  bool _first4 = true;
  bool _first5 = true;

  void _toggletomateCrossFade() {
    setState(() {
      _first = !_first;
    });
  }

  void _togglefresaCrossFade() {
    setState(() {
      _first1 = !_first1;
    });
  }

  void _togglelechugaCrossFade() {
    setState(() {
      _first2 = !_first2;
    });
  }

  void _toggleperegilCrossFade() {
    setState(() {
      _first3 = !_first3;
    });
  }

  void _toggleajoCrossFade() {
    setState(() {
      _first4 = !_first4;
    });
  }

  void _toggleapioCrossFade() {
    setState(() {
      _first5 = !_first5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: Column(
                    children: <Widget>[
                      AnimatedCrossFade(
                        duration: const Duration(seconds: 2),
                        firstChild: Image.asset("imagenes/tomate.png",
                            width: 100, height: 100),
                        secondChild: Container(
                          width: 150,
                          child: const Text(
                            "Mayor producción, gran calidad en sus cosechas y una alta calidad nutricional, además no requiere de pesticidas y plaguicidas",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        crossFadeState: _first
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: _toggletomateCrossFade,
                          child: const Text(
                            'TOMATE',
                            style: TextStyle(
                                color:
                                    Colors.black), // Cambiar el color del texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                  child: Column(
                    children: <Widget>[
                      AnimatedCrossFade(
                        duration: const Duration(seconds: 2),
                        firstChild: Image.asset("imagenes/fresa.png",
                            width: 100, height: 100),
                        secondChild: Container(
                          width: 150,
                          child: const Text(
                            "Se puede cultivar en cualquier temporada, es totalmente controlado por el sistema de riego, iluminación",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        crossFadeState: _first1
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: _togglefresaCrossFade,
                          child: const Text(
                            'FRESA',
                            style: TextStyle(
                                color:
                                    Colors.black), // Cambiar el color del texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 255, 36, 7),
                  child: Column(
                    children: <Widget>[
                      AnimatedCrossFade(
                        duration: const Duration(seconds: 2),
                        firstChild: Image.asset("imagenes/lechuga.png",
                            width: 100, height: 100),
                        secondChild: Container(
                          width: 150,
                          child: const Text(
                            "Lechugas mucho más limpias ya de origen y que no necesitan ser tratadas con potentes desinfectantes",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        crossFadeState: _first2
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: _togglelechugaCrossFade,
                          child: const Text(
                            'LECHUGA',
                            style: TextStyle(
                                color:
                                    Colors.black), // Cambiar el color del texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 255, 36, 7),
                  child: Column(
                    children: <Widget>[
                      AnimatedCrossFade(
                        duration: const Duration(seconds: 2),
                        firstChild: Image.asset("imagenes/peregil.png",
                            width: 100, height: 100),
                        secondChild: Container(
                          width: 150,
                          child: const Text(
                            "El peregil tiene un sabor y un aroma muy peculiar y tiene grandes propiedades nutritivas y medicinales",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        crossFadeState: _first3
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: _toggleperegilCrossFade,
                          child: const Text(
                            'PEREGIL',
                            style: TextStyle(
                                color:
                                    Colors.black), // Cambiar el color del texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 7, 255, 139),
                  child: Column(
                    children: <Widget>[
                      AnimatedCrossFade(
                        duration: const Duration(seconds: 2),
                        firstChild: Image.asset("imagenes/ajo.png",
                            width: 100, height: 100),
                        secondChild: Container(
                          width: 150,
                          child: const Text(
                            "Es que podemos sembrarlo y cultivarlo en cualquier época del año sin importar la climatología necesitaremos.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        crossFadeState: _first4
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: _toggleajoCrossFade,
                          child: const Text(
                            'AJO',
                            style: TextStyle(
                                color:
                                    Colors.black), // Cambiar el color del texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 7, 255, 139),
                  child: Column(
                    children: <Widget>[
                      AnimatedCrossFade(
                        duration: const Duration(seconds: 2),
                        firstChild: Image.asset("imagenes/apio.png",
                            width: 100, height: 100),
                        secondChild: Container(
                          width: 150,
                          child: const Text(
                            "Este crecerá mas sano, mas rápido y más fuerte. Ya que cada planta no tendrá la necesidad de esforzarse en buscar los nutrientes",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        crossFadeState: _first5
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      const SizedBox(height: 2),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: _toggleapioCrossFade,
                          child: const Text(
                            'APIO',
                            style: TextStyle(
                                color:
                                    Colors.black), // Cambiar el color del texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
