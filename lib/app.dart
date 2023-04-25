

import 'package:flutter/material.dart';
import 'package:simple_interest/view/Areaofcircle_view.dart';
import 'package:simple_interest/view/arthimetic_view.dart';
import 'package:simple_interest/view/dashboard_view.dart';

import 'view/display_view.dart';
import 'view/simple_intrest_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=> DashboardView(),
      '/arithmeticRoute':(context)=> const ArithmeticView(),
      '/siRoute':(context) => const SimpleIntrestView(),
      '/areaofcircleRoute':(context) => const Areaofcircle_view(),
      '/displayNameRoute': (context) =>  const DisplayView()

      
    },
  );
  }
}