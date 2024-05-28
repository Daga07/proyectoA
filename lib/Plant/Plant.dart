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
            color: Color.fromARGB(255, 51, 243, 33),width: 1)
        ),
        child: Scaffold(
          body: Center(
            child: Plant_Information(context),
          ),
        ),
      ),
    ); 


   /* return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Plant_Information(context),
          ],
        ),
      ),
    );*/
  }
}

// ignore: non_constant_identifier_names
Widget Plant_Information(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const SizedBox(height: 10),
        Column(
          children: [
            Row(
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
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Tooltip(
                  message: 'LECHUGA',
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
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: <Widget>[
            Row(
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
            )
          ],
        ),
        const SizedBox(height: 20),
      ],
    ),
  );
}
