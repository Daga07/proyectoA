// ignore_for_file: file_names, avoid_unnecessary_containers, unused_field, non_constant_identifier_names, prefer_final_fields, unused_element, sized_box_for_whitespace, avoid_print, sort_child_properties_last
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Sensors extends StatelessWidget {
  const Sensors({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EditableText.debugDeterministicCursor,
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
            child: const Center(
              child: SingleChildScrollView(
                  //MyHomePage
                  child: Column(
                children: <Widget>[
                  Center(
                      child: Column(
                    children: <Widget>[
                      SizedBox(height: 15),
                      Sensor(),
                      // MyHomePage(),
                    ],
                  ))
                ],
              )),
            ),
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
      scrollDirection: Axis.horizontal,
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
                animationDuration: 1200,
                gradient: SweepGradient(
                  colors: gradientColors,
                  stops: const <double>[0.15, 0.75],
                ),
              ),
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${value.toStringAsFixed(1)}%',
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      label,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      imageAsset,
                      width: 40,
                      height: 40,
                    ),
                  ],
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    /*required this.title*/
  });

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.title),
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
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.blue,
                ]),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Business'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('School'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
