class Food {
  final String name;
  final String description;
  final String imagepath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagepath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory { local_foods, pizza, burger, drink, dessert }

class Addon {
  String name;
  double prize;

  Addon({required this.name, required this.prize});
}
