import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/tour.dart';
import 'services/tour_service.dart';
import 'widgets/tour_card.dart';

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
