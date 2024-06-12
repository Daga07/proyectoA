// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Sensors extends StatelessWidget {
  const Sensors({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 253, 253, 253), // Color de fondo
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromARGB(255, 51, 243, 33), // Color del borde
            width: 1, // Grosor del borde
          ),
        ),
        child: Scaffold(
          // ignore: duplicate_ignore
          // ignore: avoid_unnecessary_containers
          body: Container(
            child: const Center(child: SingleChildScrollView(child: Sensor())),
          ),
        ),
        // Color de fondo del Scaffold
      ),
    );
  }
}

class Sensor extends StatefulWidget {
  const Sensor({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SensorState createState() => _SensorState();
}

class _SensorState extends State<Sensor> {
  double temnumero = 45;
  double Temperatura = 60;
  double Humedad = 50;

  @override

  // ignore: non_constant_identifier_names
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 0.1),
                    ),
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 100.1,
                          interval: 5,
                          ranges: <GaugeRange>[
                            GaugeRange(
                              startValue: 0,
                              endValue: 33,
                              color: const Color.fromARGB(255, 9, 255, 0),
                            ),
                            GaugeRange(
                              startValue: 33,
                              endValue: 66,
                              color: const Color.fromARGB(255, 251, 255, 0),
                            ),
                            GaugeRange(
                              startValue: 66,
                              endValue: 100,
                              color: const Color.fromARGB(255, 255, 0, 0),
                            ),
                          ],
                          pointers: <GaugePointer>[
                            NeedlePointer(value: Humedad),
                          ],
                          annotations: <GaugeAnnotation>[
                            // ignore: duplicate_ignore
                            // ignore: avoid_unnecessary_containers
                            GaugeAnnotation(
                              widget: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      Humedad.toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      "HUMEDAD",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              angle: 90,
                              positionFactor: 0.5,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 0.1),
                        ),
                        child: SfRadialGauge(
                          axes: <RadialAxis>[
                            RadialAxis(
                              minimum: 0,
                              maximum: 100.1,
                              interval: 5,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                  startValue: 0,
                                  endValue: 33,
                                  color: const Color.fromARGB(255, 9, 255, 0),
                                ),
                                GaugeRange(
                                  startValue: 33,
                                  endValue: 66,
                                  color: const Color.fromARGB(255, 251, 255, 0),
                                ),
                                GaugeRange(
                                  startValue: 66,
                                  endValue: 100,
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                ),
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(value: Temperatura),
                              ],
                              annotations: <GaugeAnnotation>[
                                // ignore: duplicate_ignore
                                // ignore: avoid_unnecessary_containers
                                GaugeAnnotation(
                                  widget: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          Temperatura.toString(),
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          "TEMPERATURA",
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  angle: 90,
                                  positionFactor: 0.5,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: 280,
            height: 280,
            child: SfRadialGauge(axes: <RadialAxis>[
              RadialAxis(
                  minimum: 0,
                  maximum: 100.1,
                  interval: 5,
                  //  startAngle: 0,
                  //  endAngle: 360,
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: 100,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      //  startWidth: 5,
                      //  endWidth: 10,
                    ),
                  ],
                  pointers: const <GaugePointer>[
                    RangePointer(
                      value: 50,
                      width: 14, // Ancho del rango
                      //   sizeUnit: GaugeSizeUnit.factor,
                      enableAnimation: true,
                      animationDuration: 1200,
                      gradient: SweepGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 113, 175, 233),
                          Color.fromARGB(255, 8, 1, 75),
                        ],
                        stops: <double>[0.15, 0.75],
                      ),
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      widget: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              Humedad.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "NIVEL DE AGUA",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            Image.asset(
                              '',
                              width: 50,
                              height: 80,
                            ),
                          ],
                        ),
                      ),
                      angle: 90,
                      positionFactor: 0.5,
                    )
                  ])
            ]),
          )
        ],
      ),
    );
  }
}
