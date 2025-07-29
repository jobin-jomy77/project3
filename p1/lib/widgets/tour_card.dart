import 'package:flutter/material.dart';
import '../screens/tour.dart';

class TourCard extends StatelessWidget {
  final Tour tour;

  TourCard({required this.tour});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading: Image.network(tour.imageUrl, width: 80, fit: BoxFit.cover),
        title: Text(tour.title),
        subtitle: Text('${tour.description}\n₹${tour.price.toStringAsFixed(0)}'),
        isThreeLine: true,
      ),
    );
  }
}
