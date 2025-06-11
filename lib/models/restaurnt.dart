import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food/models/card_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurnt extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    //Local food
    Food(
      name: "Milk Rice",
      description:
          " Milk rice, also known as Kiribath in Sri Lanka, is a traditional rice dish prepared by cooking rice with coconut milk. It's a popular dish in Sri Lanka, often served for breakfast or during festive occasions like the Sinhalese New Year. The creamy texture and mild flavor make it a beloved treat. ",
      imagepath: "lib/image/new_folder/local_food/milk_rice.jpg",
      price: 150.0,
      category: FoodCategory.local_foods,
      availableAddons: [
        Addon(name: "extra lunu miris", prize: 200),
        Addon(name: "extra curry", prize: 200),
        Addon(name: "extra plate", prize: 20),
      ],
    ),
    Food(
      name: "Pittu",
      description:
          "Pittu is a traditional Sri Lankan steamed dish made of rice flour and desiccated coconut, often served for breakfast. It's a simple yet satisfying meal that has gained popularity as a nighttime treat as well..",
      imagepath: "lib/image/new_folder/local_food/pittu.jpg",
      price: 100.0,
      category: FoodCategory.local_foods,
      availableAddons: [
        Addon(name: "extra chiken curry", prize: 200),
        Addon(name: "extra lunu miris", prize: 200),
        Addon(name: "extra dhal curry ", prize: 200),
      ],
    ),

    Food(
      name: " corn",
      description:
          "Corn, also known as maize, is a plant cultivated for its large grains, or kernels, which are arranged in rows on a stalk called a cob. These kernels are a significant food source, ",
      imagepath: "lib/image/new_folder/local_food/corn.jpg",
      price: 150.0,
      category: FoodCategory.local_foods,
      availableAddons: [
        Addon(name: "extra cheess", prize: 220),
        Addon(name: "extra margerin", prize: 200),
      ],
    ),
    Food(
      name: "Kurakkan Foods",
      description:
          " Kurakkan (also known as finger millet) is a nutrient-rich grain widely consumed in Sri Lanka and beyond, particularly in regions where it's a staple food. It's used to make various dishes like Kurakkan roti (bread), porridge, and desserts. Kurakkan is valued for its high fiber, calcium, iron, and amino acid content, making it beneficial for managing diabetes, promoting digestion, and strengthening bones..",
      imagepath: "lib/image/new_folder/local_food/kurakkan.jpg",
      price: 350.0,
      category: FoodCategory.local_foods,
      availableAddons: [
        Addon(name: "extra lunu miris", prize: 320),
        Addon(name: "extra chiken curry", prize: 250),
        Addon(name: "extra dhal curry", prize: 200),
      ],
    ),

    // pizza
    Food(
      name: "Chicken Pizza",
      description:
          "A delicious blend of tender chicken pieces, savory tomato sauce, melted mozzarella cheese, and a mix of herbs and spices on a crispy crust. ",
      imagepath: "lib/image/new_folder/pizza/chicken pizza.jpg",
      price: 550 - 2000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "extra chicken", prize: 200),
        Addon(name: "extra cheess", prize: 300),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),
    Food(
      name: "Fish Pizza",
      description:
          "A unique and flavorful pizza topped with seasoned fish chunks, creamy cheese, tangy tomato sauce, onions, and herbs. Ideal for seafood lovers seeking a tasty twist on classic pizza....",
      imagepath: "lib/image/new_folder/pizza/fish pizza.jpg",
      price: 550 - 2000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "Becon", prize: 20),
        Addon(name: "extra cheess", prize: 300),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),
    Food(
      name: "Marigate Pizza",
      description:
          "A traditional Italian favorite made with fresh mozzarella, rich tomato sauce, and aromatic basil leaves on a thin, crispy crust. Simple, elegant, and full of authentic flavor....",
      imagepath: "lib/image/new_folder/pizza/marigate pizza.jpg",
      price: 550 - 2000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: " extra chees", prize: 300),
        Addon(name: "Becon", prize: 250),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),
    Food(
      name: "Tomato Pizza",
      description:
          "A simple yet flavorful classic featuring fresh tomato slices, rich tomato sauce, melted mozzarella cheese, and a sprinkle of herbs on a crispy crust. .",
      imagepath: "lib/image/new_folder/pizza/tomato.jpg",
      price: 550 - 2000,
      category: FoodCategory.pizza,
      availableAddons: [
        Addon(name: "extra cheess", prize: 300),
        Addon(name: "Becon", prize: 250),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),

    //burger
    Food(
      name: "Chicken Burger",
      description:
          " Tender grilled or crispy fried chicken breast, layered with lettuce, tomato, cheese, and a light mayo or spicy sauce, all sandwiched in a soft burger bun.",

      imagepath: "lib/image/new_folder/burger/chicken burger.jpg",
      price: 550,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "Avacado", prize: 200),
        Addon(name: "Becon", prize: 250),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),
    Food(
      name: "Egg Burger",
      description:
          "A hearty burger featuring a fried or scrambled egg, juicy patty, cheese, lettuce, tomato, and a special sauce, perfect for any time of the day. ",
      imagepath: "lib/image/new_folder/burger/egg burger.jpg",
      price: 550,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "extra cheess", prize: 200),
        Addon(name: "Becon", prize: 250),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          " A wholesome plant-based patty made from a mix of vegetables, beans, or lentils, served with lettuce, tomato, cucumber, and a tangy vegan sauce, in a fresh bun.",
      imagepath: "lib/image/new_folder/burger/veggi.jpg",
      price: 350,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "extra chess", prize: 200),
        Addon(name: "Avacado", prize: 250),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),
    Food(
      name: " Paneer Burger",
      description:
          "A crispy paneer (Indian cottage cheese) patty with mint chutney, onions, and lettuce in a toasted bun – perfect for vegetarians.",
      imagepath: "lib/image/new_folder/burger/other.jpg",
      price: 650,
      category: FoodCategory.burger,
      availableAddons: [
        Addon(name: "extra cheess", prize: 200),

        Addon(name: "Becon", prize: 250),
        Addon(name: "Tomato souce", prize: 320),
      ],
    ),
    //drink
    Food(
      name: "Fresh Juice",
      description:
          "Fresh juice is made by extracting liquid from fruits or vegetables without preservatives or added sugars. Popular options include orange, apple, watermelon, pineapple, mango, carrot, and beetroot juice. Fresh juice is rich in vitamins, minerals, and antioxidants, making it a healthy and refreshing choice, especially when served chilled. It's commonly consumed as a breakfast drink or as a natural energy booster during the day..",
      imagepath: "lib/image/new_folder/drink/fresh juice.jpg",
      price: 250,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "extra ice cube", prize: 200),
        Addon(name: "extra stroow", prize: 200),
      ],
    ),
    Food(
      name: "Coffe",
      description:
          " Coffee is a brewed beverage made from roasted coffee beans. It can be served in many forms: black, with milk (latte, cappuccino), iced, or flavored (caramel, mocha, vanilla). Coffee contains caffeine, which provides a quick energy boost and improves alertness. It’s one of the most popular drinks worldwide and is often enjoyed in the morning or as a social or work-time drink. Espresso-based drinks are common in cafes.",
      imagepath: "lib/image/new_folder/drink/coffe.jpg",
      price: 250,
      category: FoodCategory.drink,
      availableAddons: [Addon(name: "extra milk ", prize: 200)],
    ),
    Food(
      name: "Mojito",
      description:
          " A mojito is a classic Cuban cocktail made with five key ingredients: white rum, sugar (traditionally cane sugar), lime juice, soda water, and mint. It’s known for its refreshing taste, combining the zing of lime with the coolness of mint and a hint of sweetness. The drink is served over ice, making it ideal for warm weather. Non-alcoholic versions (virgin mojitos) are also popular..",
      imagepath: "lib/image/new_folder/drink/mojito.jpg",
      price: 550,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "extra ice cube", prize: 220),
        Addon(name: "extra stroow", prize: 200),
      ],
    ),

    Food(
      name: "Arrak",
      description:
          "Arrack is a traditional distilled spirit in Sri Lanka and Southeast Asia, made from fermented sap of coconut flowers or sugarcane.   Mixing the two creates a strong drink, typically consumed during parties or special occasions. This combo is not standard and may vary in strength and taste",
      imagepath: "lib/image/new_folder/drink/R.png",
      price: 6550,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: "extra ice cube", prize: 200),
        Addon(name: "extra soda", prize: 200),
      ],
    ),
    //dessert
    Food(
      name: "IceCream",
      description:
          "A sweet, frozen dessert made from cream, milk, and sugar, flavored with various ingredients like vanilla, chocolate, fruits, or nuts. It's a refreshing and delicious treat enjoyed by all ages, especially in the heat.",
      imagepath: "lib/image/new_folder/dessert/ice creem.jpg",
      price: 350,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "extra spoon", prize: 20),
        Addon(name: "Vanila surp", prize: 250),
        Addon(name: "Honey", prize: 320),
      ],
    ),
    Food(
      name: "Cake",
      description:
          " A sweet, baked dessert typically made from flour, sugar, and eggs. Cakes come in many varieties, from spongy and light to rich and moist, and can be frosted, layered, or enjoyed plain. Popular flavors include chocolate, vanilla, and fruit..",
      imagepath: "lib/image/new_folder/dessert/cake.jpg",
      price: 450,
      category: FoodCategory.dessert,
      availableAddons: [Addon(name: "extra spoon", prize: 220)],
    ),
    Food(
      name: "Cupcake",
      description:
          " A small, individual-sized cake often topped with frosting and decorative sprinkles. Cupcakes come in a variety of flavors, such as vanilla, chocolate, or fruit-infused, and are perfect for small treats or parties..",
      imagepath: "lib/image/new_folder/dessert/cup cake.jpg",
      price: 150,
      category: FoodCategory.dessert,
      availableAddons: [Addon(name: "extra spoon", prize: 220)],
    ),
    Food(
      name: "Cream Bhafaid",
      description:
          "A rich and creamy dessert made with fresh cream, sugar, and a delicate blend of spices, offering a smooth, indulgent experience. This chilled dessert is perfect for those who love rich, velvety textures.",
      imagepath: "lib/image/new_folder/dessert/cream bhafaid.jpg",
      price: 350,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "extra cream", prize: 220),
        Addon(name: "Vanila surp", prize: 250),
      ],
    ),
    Food(
      name: "Fruit salad",
      description:
          "A healthy dish made with a mixture of raw or cooked vegetables, fruits, nuts, seeds, or grains. Often paired with a dressing, salads can be light and refreshing or hearty, depending on the ingredients, and can include proteins like chicken,eggs,or tofu..",
      imagepath: "lib/image/new_folder/dessert/salad.jpg",
      price: 450,
      category: FoodCategory.dessert,
      availableAddons: [
        Addon(name: "extra honey", prize: 220),
        Addon(name: "Vanila surp", prize: 250),
      ],
    ),
  ];
  List<Food> get menu => _menu;
  List<CardItem> get cart => _card;

  //user card
  final List<CardItem> _card = [];

  //add to card
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a card item alredy with the same food and selected addons
    CardItem? cardItem = _card.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      bool isSameAddons = ListEquality().equals(
        item.selectAddons,
        selectedAddons,
      );
      return isSameAddons && isSameAddons;
    });
    // if item already exits,increase it"s quantity
    if (cardItem != null) {
      cardItem.quantity++;
    } else {
      _card.add(CardItem(food: food, selectAddons: selectedAddons));
    }
    notifyListeners();
  }

  //remove from card
  void removeFromCard(CardItem cardItem) {
    int cardIndex = _card.indexOf(cardItem);

    if (cardIndex != -1) {
      if (_card[cardIndex].quantity > 1) {
        _card[cardIndex].quantity--;
      } else {
        _card.removeAt(cardIndex);
      }
    }
    notifyListeners();
  }

  //get total price of crd
  double getTotalPrice() {
    double total = 0.0;
    for (CardItem cardItem in _card) {
      double itemTotal = cardItem.food.price;

      for (Addon addon in cardItem.selectAddons) {
        itemTotal += addon.prize;
      }
      total += itemTotal * cardItem.quantity;
    }
    return total;
  }

  //get total number of items in card
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CardItem cardItem in _card) {
      totalItemCount += cardItem.quantity;
    }
    return totalItemCount;
  }

  // clear card
  void clearCart() {
    _card.clear();
    notifyListeners();
  }

  //generate a receipt
  String displayCardReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = DateFormat(
      'yyyy-mm-dd HH:mm:ss',
    ).format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("............");

    for (final CardItem in _card) {
      receipt.writeln(
        "${CardItem.quantity}*${CardItem.food.name}-${_formatPrice(CardItem.food.price)}",
      );
      if (CardItem.selectAddons.isNotEmpty) {
        receipt.writeln("Add-ons:${_formatAddons(CardItem.selectAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("..............");
    receipt.writeln();
    receipt.writeln("Total Items:${getTotalItemCount()}");
    receipt.writeln("Total price:${_formatPrice(getTotalPrice())}");
    return receipt.toString();
  }

  //formate bouble value into money
  String _formatPrice(double price) {
    return (price.toString());
  }

  //formate list of addons into a string summery
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addons) => "${addons.name}(${_formatPrice(addons.prize)})")
        .join(",");
  }
}
