import 'package:flutter/material.dart';

import '../model/display_name.dart';

class DisplayView extends StatefulWidget {
  const DisplayView({super.key});

  @override
  State<DisplayView> createState() => _DisplayViewState();
}

class _DisplayViewState extends State<DisplayView> {
  // const DisplayView({super.key});
  String friendName = 'Click me';
  DisplayName displayName = DisplayName();

  void getName() {
    setState(() {
      friendName = displayName.nextName();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Display Name',
          ),
          centerTitle: true),
      body: Center(
        child: SizedBox(
            child: ElevatedButton(
                onPressed: () {
                  getName();
                },
                child: Text(friendName))),
      ),
    );
  }
}
