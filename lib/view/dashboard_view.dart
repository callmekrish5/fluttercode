import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
   DashboardView({super.key});

  String friendName = 'Click me';
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
              height: 15.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/siRoute');
                  },
                  child: const Text('Simple Interest')),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/arithmeticRoute');
                  },
                  child: const Text('Arithmetic Calculation')),
            ),
            const SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/areaofcircleRoute');
                  },
                  child: const Text('Area of circle')),
            ),
            const SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/displayNameRoute');
                  },
                  child: const Text('Display Name')),
            ),
          ],
        ),
      )),
    );
  }
}
