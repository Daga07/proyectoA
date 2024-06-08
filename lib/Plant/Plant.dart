// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Plant extends StatelessWidget {
  const Plant({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: const Color.fromARGB(255, 51, 243, 33), width: 1)),
        child: const Scaffold(
          body: Center(
            child: PlantInformation(),
          ),
        ),
      ),
    );
  }
}

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCrossFade(
                          duration: const Duration(seconds: 2),
                          firstChild: Image.asset("imagenes/tomate.png",
                              width: 120, height: 120),
                          secondChild: const Column(children: <Widget>[
                            Text(
                              "Mayor producción, gran calidad en sus cosechas y una alta calidad nutricional, además no requiere de pesticidas y plaguicidas",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          crossFadeState: _first
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                        ),
                        const SizedBox(height: 2),
                        ElevatedButton(
                          onPressed: _toggletomateCrossFade,
                          child: const Text('TOMATE'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCrossFade(
                          duration: const Duration(seconds: 2),
                          firstChild: Image.asset("imagenes/fresa.png",
                              width: 120, height: 120),
                          secondChild: const Column(children: <Widget>[
                            Text(
                              "Se puede cultivar en cualquier temporada, es totalmente controlado por el sistema de riego, iluminación",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          crossFadeState: _first1
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                        ),
                        const SizedBox(height: 2),
                        ElevatedButton(
                          onPressed: _togglefresaCrossFade,
                          child: const Text('FRESA'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCrossFade(
                          duration: const Duration(seconds: 2),
                          firstChild: Image.asset("imagenes/lechuga.png",
                              width: 120, height: 120),
                          secondChild: const Column(children: <Widget>[
                            Text(
                              "Lechugas mucho más limpias ya de origen y que no necesitan ser tratadas con potentes desinfectantes",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          crossFadeState: _first2
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                        ),
                        const SizedBox(height: 2),
                        ElevatedButton(
                          onPressed: _togglelechugaCrossFade,
                          child: const Text('LECHUGA'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                       border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCrossFade(
                          duration: const Duration(seconds: 2),
                          firstChild: Image.asset("imagenes/peregil.png",
                              width: 120, height: 120),
                          secondChild: const Column(children: <Widget>[
                            Text(
                              "El peregil tiene un sabor y un aroma muy peculiar y tiene grandes propiedades nutritivas y medicinales",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          crossFadeState: _first3
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                        ),
                        const SizedBox(height: 2),
                        ElevatedButton(
                          onPressed: _toggleperegilCrossFade,
                          child: const Text('PEREGIL'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCrossFade(
                          duration: const Duration(seconds: 2),
                          firstChild: Image.asset("imagenes/ajo.png",
                              width: 120, height: 120),
                          secondChild: const Column(children: <Widget>[
                            Text(
                              "Es que podemos sembrarlo y cultivarlo en cualquier época del año sin importar la climatología necesitaremos.",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          crossFadeState: _first4
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                        ),
                        const SizedBox(height: 2),
                        ElevatedButton(
                          onPressed: _toggleajoCrossFade,
                          child: const Text('AJO'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                       border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCrossFade(
                          duration: const Duration(seconds: 2),
                          firstChild: Image.asset("imagenes/apio.png",
                              width: 120, height: 120),
                          secondChild: const Column(children: <Widget>[
                            Text(
                              "Este crecerá mas sano, mas rápido y más fuerte. Ya que cada planta no tendrá la necesidad de esforzarse en buscar los nutrientes",
                              textAlign: TextAlign.center,
                            ),
                          ]),
                          crossFadeState: _first5
                              ? CrossFadeState.showFirst
                              : CrossFadeState.showSecond,
                        ),
                        const SizedBox(height: 2),
                        ElevatedButton(
                          onPressed: _toggleapioCrossFade,
                          child: const Text('API'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
/*
// ignore: non_constant_identifier_names
Widget Plant_Informatio(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Tooltip(
                    message: 'TOMATE',
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: AlertDialog(
                                    title: const Text("TOMATE"),
                                    content: const Text(
                                        "Mayor producción, gran calidad en sus cosechas y una alta calidad nutricional, además no requiere de pesticidas y plaguicidas"),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Salir'),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Image.asset("imagenes/tomate.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Tooltip(
                    message: 'FRESA',
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: AlertDialog(
                                    title: const Text("FRESA"),
                                    content: const Text(
                                        "Se puede cultivar en cualquier temporada, es totalmente controlado por el sistema de riego, iluminación"),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Salir'),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Image.asset("imagenes/fresa.png"),
                      ),
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
                  Tooltip(
                    message: 'LECHUGA',
                    child: Container(
                      width: 140,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: AlertDialog(
                                    title: const Text("LECHUGA"),
                                    content: const Text(
                                        "Lechugas mucho más limpias ya de origen y que no necesitan ser tratadas con potentes desinfectantes"),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Salir'),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Image.asset("imagenes/lechuga.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Tooltip(
                    message: 'PEREGIL',
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: AlertDialog(
                                    title: const Text("PEREGIL"),
                                    content: const Text(
                                        "El peregil tiene un sabor y un aroma muy peculiar y tiene grandes propiedades nutritivas y medicinales"),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Salir'),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Image.asset("imagenes/peregil.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Tooltip(
                    message: 'AJO',
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: AlertDialog(
                                    title: const Text("AJO"),
                                    content: const Text(
                                        "Es que podemos sembrarlo y cultivarlo en cualquier época del año sin importar la climatología necesitaremos."),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Salir'),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Image.asset("imagenes/ajo.png"),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Tooltip(
                    message: 'APIO',
                    child: Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(153, 117, 40, 128),
                            width: 0.1),
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: AlertDialog(
                                    title: const Text("APIO"),
                                    content: const Text(
                                        "Este crecerá mas sano, mas rápido y más fuerte. Ya que cada planta no tendrá la necesidad de esforzarse en buscar los nutrientes"),
                                    actions: <Widget>[
                                      MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Salir'),
                                      )
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Image.asset("imagenes/apio.png"),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    ),
  );
  
}*/
