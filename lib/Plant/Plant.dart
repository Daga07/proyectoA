import 'package:flutter/material.dart';

class Plant extends StatelessWidget {
  const Plant({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.teal,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Plant_Information(),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Plant_Information() {
  return Column(
    children: [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 220,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 158, 252, 8),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 220,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 128, 85, 65),
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
              Container(
                width: 220,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 158, 252, 8),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 220,
                height: 180,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 128, 85, 65),
                ),
              )
            ],
          ),
        ],
      )
    ],
  );
}
