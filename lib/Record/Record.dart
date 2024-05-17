// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Record extends StatelessWidget {
  const Record({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      
        width: double.infinity,
        height: double.infinity,
        child: Ingresar(),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Ingresar(){
   return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 10),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 15),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 15),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 15),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Container(
                      width: 180,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color.fromARGB(153, 255, 0, 0)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: const Color.fromARGB(153, 255, 0, 0)),
                  ),
                ),
              ],
            )
          ],
        );
}