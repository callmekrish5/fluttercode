import 'package:flutter/material.dart';
import '../model/simple_interest.dart';

class SimpleIntrestView extends StatefulWidget {
  const SimpleIntrestView({super.key});

  @override
  State<SimpleIntrestView> createState() => _SimpleIntrestViewState();
}

class _SimpleIntrestViewState extends State<SimpleIntrestView> {
  SimpleIntrestViewCalculation si = SimpleIntrestViewCalculation();
  double principle = 0;
  double rate = 0;
  double time = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest '),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  onChanged: (value) {
                    principle = double.parse(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter Principal',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  onChanged: (value) {
                    rate = double.parse(value);
                  },
                  decoration: InputDecoration(
                      hintText: 'Enter rate',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  onChanged: (value) {
                    time = double.parse(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter time',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = si.calculateSI(
                            principle: principle, rate: rate, time: time);
                      });
                    },
                    child: const Text('CALCULATE'),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Simple interest is $result',
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
