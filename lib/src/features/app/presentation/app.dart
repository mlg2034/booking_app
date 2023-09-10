import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_application/src/features/hotel/presentation/hotel_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelScreen(),
    );
  }
}