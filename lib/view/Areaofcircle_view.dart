import 'package:flutter/material.dart';

import '../model/areaofcircle.dart';

class Areaofcircle_view extends StatefulWidget {
  const Areaofcircle_view({super.key});

  @override
  State<Areaofcircle_view> createState() => _Areaofcircle_viewState();
}

class _Areaofcircle_viewState extends State<Areaofcircle_view> {
  double radius = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) {
                radius = double.parse(value);
              },
              decoration: InputDecoration(
                  labelText: 'Enter radius',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0))),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Areaofcircle circle = Areaofcircle(radius: radius);
                      result = circle.areaofcircle();
                    });
                  },
                  child: const Text('Area of circle')),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Area of Circle is $result',
              style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }
}
