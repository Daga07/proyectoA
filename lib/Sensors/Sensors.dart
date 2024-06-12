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
  double Temperatura = 100;
  double Humedad = 50;
  double Nivel = 90;

  @override

  // ignore: non_constant_identifier_names
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Container(
            width: 230,
            height: 230,
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
                  pointers: <GaugePointer>[
                    RangePointer(
                      value: Humedad,
                      width: 14, // Ancho del rango
                      //   sizeUnit: GaugeSizeUnit.factor,
                      enableAnimation: true,
                      animationDuration: 1200,
                      gradient: const SweepGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 113, 215, 233),
                          Color.fromARGB(255, 3, 115, 243),
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
                              '${Humedad.toString()}%',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "HUMEDAD",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'imagenes/humedad.gif',
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      angle: 90,
                      positionFactor: 0.5,
                    )
                  ])
            ]),
          ),
          const SizedBox(height: 15),
          Container(
            width: 230,
            height: 230,
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
                  pointers: <GaugePointer>[
                    RangePointer(
                      value: Temperatura,
                      width: 14, // Ancho del rango
                      //   sizeUnit: GaugeSizeUnit.factor,
                      enableAnimation: true,
                      animationDuration: 1200,
                      gradient: const SweepGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 211, 233, 113),
                          Color.fromARGB(255, 243, 39, 3),
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
                              '${Temperatura.toString()}%',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "TEMPERATURA",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'imagenes/temperatura.gif',
                              width: 40,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                      angle: 90,
                      positionFactor: 0.5,
                    )
                  ])
            ]),
          ),
          const SizedBox(height: 15),
          Container(
            width: 230,
            height: 230,
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
                  pointers: <GaugePointer>[
                    RangePointer(
                      value: Nivel,
                      width: 14, // Ancho del rango
                      //   sizeUnit: GaugeSizeUnit.factor,
                      enableAnimation: true,
                      animationDuration: 1200,
                      gradient: const SweepGradient(
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
                              '${Nivel.toString()}%',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "NIVEL DE AGUA",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'imagenes/agua.gif',
                              width: 40,
                              height: 40,
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
