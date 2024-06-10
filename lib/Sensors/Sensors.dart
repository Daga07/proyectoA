// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';
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
            child: const Center(child: Sensor()),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tooltip(
              message: "TEMPERATURA",
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("imagenes/temperatura.gif"),
                      fit: BoxFit.contain),
                ),
              )
              ),
          const SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 0.2),
                      ),
                      child: SfLinearGauge(
                        minimum: 0,
                        maximum: 80,
                        interval: 5,
                        ranges: const <LinearGaugeRange>[
                          LinearGaugeRange(
                            startValue: 0,
                            endValue: 26.6,
                            color: Color.fromARGB(255, 9, 255, 0),
                          ),
                          LinearGaugeRange(
                            startValue: 26.6,
                            endValue: 53.3,
                            color: Color.fromARGB(255, 251, 255, 0),
                          ),
                          LinearGaugeRange(
                            startValue: 53.3,
                            endValue: 80,
                            color: Color.fromARGB(255, 255, 0, 0),
                          ),
                        ],
                        markerPointers: <LinearMarkerPointer>[
                          LinearShapePointer(
                            value: temnumero,
                            shapeType: LinearShapePointerType.invertedTriangle,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 220,
                          height: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 0.2),
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
                                    color:
                                        const Color.fromARGB(255, 251, 255, 0),
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
                  ),
                ],
              ),
              const SizedBox(width: 10),
               Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 220,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 0.2),
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
          )
            ],
          ),
          const SizedBox(height: 20),
         
        ],
      ),
    );
  }
}
