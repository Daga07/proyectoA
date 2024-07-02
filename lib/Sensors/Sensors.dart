// ignore_for_file: file_names, avoid_unnecessary_containers, unused_field, non_constant_identifier_names, prefer_final_fields, unused_element, sized_box_for_whitespace, avoid_print, sort_child_properties_last
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:proyecto/Help_user/Help.dart';
import 'package:proyecto/Sesion/sesion.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Sensors extends StatelessWidget {
  const Sensors({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: UsuarioWidget()
        // Color de fondo del Scaffold
        );
  }
}

class UsuarioWidget extends StatefulWidget {
  @override
  _UsuarioWidgetState createState() => _UsuarioWidgetState();
}

class _UsuarioWidgetState extends State<UsuarioWidget> {
  String nombre = 'Daniel';
  String apellido = 'Gallo';
  String seleccionado = 'Opción 1';

  @override
  Widget build(BuildContext context) {
    Widget? widget; // Asignación antes de usarlo
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40, // Define la altura del AppBar
        elevation: 4, // Aumenta la elevación del AppBar
        //  backgroundColor: Colors.amber, // color del AppBAr
        //shadowColor: const Color.fromARGB(  255, 124, 244, 54), // Color personalizado para la sombra
        actions: <Widget>[
          DropdownButton<String>(
            value: seleccionado,
            onChanged: (String? newValue) {
              if (newValue != null) {
                seleccionado = newValue;
              }
            },
            items: <String>['Opción 1', 'Opción 2', 'Opción 3'].map(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
          ),
        ],
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
      body: Center(
        child: widget ?? Sensor(),
      ),
      drawer: sesion(),
    );
  }
}

class Sensor extends StatefulWidget {
  const Sensor({super.key});

  @override
  _SensorState createState() => _SensorState();
}

class _SensorState extends State<Sensor> {
  double _randomTemp = 0.0;
  double _randomHumidity = 0.0;
  double _randomLevel = 0.0;
  final Random _random = Random();
  Timer? _timer;
  int _light = 0;

  @override
  void initState() {
    super.initState();
    _generateRandomValues();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _generateRandomValues() {
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        _randomTemp = _random.nextInt(100).toDouble();
        _randomHumidity = _random.nextInt(100).toDouble();
        _randomLevel = _random.nextInt(100).toDouble();
      });
    });
  }

  void _toggleLight() {
    setState(() {
      _light = _light == 0 ? 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleLight,
            child: Tooltip(
              message: _light == 0 ? 'ENCENDER' : 'APAGAR',
              textStyle: const TextStyle(fontSize: 11),
              child: Icon(
                _light == 0 ? Icons.lightbulb_outline : Icons.lightbulb_rounded,
                size: 30,
                color: _light == 0
                    ? null
                    : const Color.fromARGB(255, 233, 231, 142),
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 213, 240, 211),
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 213, 240, 211),
            ),
          ),
          const SizedBox(height: 30),
          SensorGauge(
            value: _randomHumidity,
            label: 'HUMEDAD',
            imageAsset: 'imagenes/humedad.gif',
            gradientColors: const [
              Color.fromARGB(255, 113, 215, 233),
              Color.fromARGB(255, 3, 115, 243)
            ],
          ),
          const SizedBox(height: 15),
          SensorGauge(
            value: _randomTemp,
            label: 'TEMPERATURA',
            imageAsset: 'imagenes/temperatura.gif',
            gradientColors: const [
              Color.fromARGB(255, 211, 233, 113),
              Color.fromARGB(255, 243, 39, 3)
            ],
          ),
          const SizedBox(height: 15),
          SensorGauge(
            value: _randomLevel,
            label: 'NIVEL DE AGUA',
            imageAsset: 'imagenes/agua.gif',
            gradientColors: const [
              Color.fromARGB(255, 113, 175, 233),
              Color.fromARGB(255, 8, 1, 75)
            ],
          ),
        ],
      ),
    );
  }
}

class SensorGauge extends StatelessWidget {
  final double value;
  final String label;
  final String imageAsset;
  final List<Color> gradientColors;

  const SensorGauge({
    Key? key,
    required this.value,
    required this.label,
    required this.imageAsset,
    required this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 230,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 100.1,
            interval: 5,
            ranges: <GaugeRange>[
              GaugeRange(
                startValue: 0,
                endValue: 100,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ],
            pointers: <GaugePointer>[
              RangePointer(
                value: value,
                width: 14,
                enableAnimation: true,
                // animationDuration: 1200, //duración de las animaciones asociadas. La duración se define en milisegundos.
                gradient: SweepGradient(
                  colors: gradientColors,
                  stops: const <double>[0.15, 0.75],
                ),
              ),
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          '${value.toStringAsFixed(1)}%',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          label,
                          style: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image.asset(
                        imageAsset,
                        width: 40,
                        height: 40,
                      ),
                    ],
                  ),
                ),
                angle: 90,
                positionFactor: 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
