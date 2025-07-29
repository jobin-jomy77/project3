import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(TourApp());
}

class TourApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tour Recommendation',
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
