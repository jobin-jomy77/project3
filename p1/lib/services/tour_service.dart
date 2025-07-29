import '../screens/tour.dart';

class TourService {
  static List<Tour> getRecommendedTours(String city, double budget, List<String> preferences) {
    List<Tour> allTours = Tour.mockTours();

    return allTours.where((tour) =>
      tour.city.toLowerCase() == city.toLowerCase() &&
      tour.price <= budget &&
      preferences.any((p) => tour.tags.contains(p))
    ).toList();
  }
}
