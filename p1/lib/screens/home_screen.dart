import 'package:flutter/material.dart';
import '../screens/tour.dart';
import '../widgets/tour_card.dart';
import '../services/tour_service.dart';

class HomeScreen extends StatelessWidget {
  final String city;
  final double budget;
  final List<String> preferences;
  final DateTime startDate;
  final DateTime endDate;

  HomeScreen({required this.city, required this.budget, required this.preferences, required this.startDate, required this.endDate});

  @override
  Widget build(BuildContext context) {
    List<Tour> recommendedTours = TourService.getRecommendedTours(city, budget, preferences);

    return Scaffold(
      appBar: AppBar(title: Text('Recommended Tours')),
      body: ListView.builder(
        itemCount: recommendedTours.length,
        itemBuilder: (context, index) {
          return TourCard(tour: recommendedTours[index]);
        },
      ),
    );
  }
}
