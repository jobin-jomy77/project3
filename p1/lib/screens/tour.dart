class Tour {
  final String title;
  final String city;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> tags;

  Tour({required this.title, required this.city, required this.description, required this.price, required this.imageUrl, required this.tags});

  static List<Tour> mockTours() {
    return [
      Tour(
        title: "Cultural Walk in Jaipur",
        city: "Jaipur",
        description: "Explore historic forts, temples, and local food.",
        price: 2500,
        imageUrl: "https://example.com/jaipur.jpg",
        tags: ["Culture", "History", "Food"],
      ),
      Tour(
        title: "Nature Trek in Manali",
        city: "Manali",
        description: "Trek the lush green hills and scenic valleys.",
        price: 3000,
        imageUrl: "https://example.com/manali.jpg",
        tags: ["Nature", "Adventure"],
      ),
    ];
  }
}
