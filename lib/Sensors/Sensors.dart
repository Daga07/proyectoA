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
            child: const Center(
              child: SingleChildScrollView(
                  //MyHomePage
                  child: Column(
                children: <Widget>[
                  Center(
                      child: Column(
                    children: <Widget>[
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
  // ignore: library_private_types_in_public_api
  _SensorState createState() => _SensorState();
}

class _SensorState extends State<Sensor> {
  double Temperatura = 100;
  double Humedad = 50;
  double Nivel = 90;
  var _luz = 0;

  void _clicluz() {
    setState(() {
      _luz = _luz == 0 ? 1 : 0;
    });
    print('LUZ PRENDE: $_luz');
  }

  @override
  // ignore: non_constant_identifier_names
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /*  child: Container(
                  child: _luz == 0
                      ? const Icon(Icons.lightbulb_outline, size: 20)
                      : const Image(
                          image: AssetImage('imagenes/luz.gif'),
                          fit: BoxFit.contain,
                        ),
                ) */

          const SizedBox(height: 20),
          Container(
              child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: _clicluz,
                // ignore: sort_child_properties_last
                child: Tooltip(
                  // ignore: sort_child_properties_last
                  child: _luz == 0
                      ? const Icon(
                          Icons.lightbulb_outline,
                          size: 25,
                        )
                      : const Icon(
                          Icons.lightbulb_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 233, 231, 142),
                        ),
                  message: _luz == 0 ? 'ENCENDER' : 'APAGAR',
                  textStyle: const TextStyle(
                    fontSize: 11,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 213, 240, 211),
                    elevation: 10,
                    shadowColor: const Color.fromARGB(255, 213, 240, 211)),
              )
            ],
          )),
          const SizedBox(height: 30),
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
