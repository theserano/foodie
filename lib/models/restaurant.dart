import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:foodie/models/cart_item.dart';
import 'package:foodie/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
        name: 'Classic Cheeseburger',
        description: 'A juicy beef patty with melted cheddar',
        imagePath: 'lib/images/burgers/burger_1.jpeg',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Classic Cheeseburger',
        description: 'A juicy beef patty with melted cheddar',
        imagePath: 'lib/images/burgers/burger_2.jpeg',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Classic Cheeseburger',
        description: 'A juicy beef patty with melted cheddar',
        imagePath: 'lib/images/burgers/burger_3.jpeg',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Classic Cheeseburger',
        description: 'A juicy beef patty with melted cheddar',
        imagePath: 'lib/images/burgers/burger_4.jpeg',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Classic Cheeseburger',
        description: 'A juicy beef patty with melted cheddar',
        imagePath: 'lib/images/burgers/burger_5.jpeg',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),

    // salad
    Food(
        name: 'Fruit Salad',
        description: 'A healthy salad made with different kinds of fruit',
        imagePath: 'lib/images/salads/salad_1.jpeg',
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Fruit Salad',
        description: 'A healthy salad made with different kinds of fruit',
        imagePath: 'lib/images/salads/salad_2.jpeg',
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Fruit Salad',
        description: 'A healthy salad made with different kinds of fruit',
        imagePath: 'lib/images/salads/salad_3.jpeg',
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Fruit Salad',
        description: 'A healthy salad made with different kinds of fruit',
        imagePath: 'lib/images/salads/salad_4.jpeg',
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Fruit Salad',
        description: 'A healthy salad made with different kinds of fruit',
        imagePath: 'lib/images/salads/salad_5.jpeg',
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),

    //sides
    Food(
        name: 'Ice cream',
        description: 'Tasty mouth watering ice cream',
        imagePath: 'lib/images/sides/side_1.jpeg',
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Ice cream',
        description: 'Tasty mouth watering ice cream',
        imagePath: 'lib/images/sides/side_2.jpeg',
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Ice cream',
        description: 'Tasty mouth watering ice cream',
        imagePath: 'lib/images/sides/side_3.jpeg',
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Ice cream',
        description: 'Tasty mouth watering ice cream',
        imagePath: 'lib/images/sides/side_4.jpeg',
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Ice cream',
        description: 'Tasty mouth watering ice cream',
        imagePath: 'lib/images/sides/side_5.jpeg',
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),

    //dessert
    Food(
        name: 'Dessert special',
        description: 'Find something to enjoy...',
        imagePath: 'lib/images/desserts/dessert_1.jpeg',
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Dessert special',
        description: 'Find something to enjoy...',
        imagePath: 'lib/images/desserts/dessert_2.jpeg',
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Dessert special',
        description: 'Find something to enjoy...',
        imagePath: 'lib/images/desserts/dessert_3.jpeg',
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Dessert special',
        description: 'Find something to enjoy...',
        imagePath: 'lib/images/desserts/dessert_4.jpeg',
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Dessert special',
        description: 'Find something to enjoy...',
        imagePath: 'lib/images/desserts/dessert_5.jpeg',
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),

    //drinks
    Food(
        name: 'Drinks special',
        description: 'Cool and refreshing drink fo your choice...',
        imagePath: 'lib/images/drinks/drink_1.jpeg',
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Drinks special',
        description: 'Cool and refreshing drink fo your choice...',
        imagePath: 'lib/images/drinks/drink_2.jpeg',
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Drinks special',
        description: 'Cool and refreshing drink fo your choice...',
        imagePath: 'lib/images/drinks/drink_3.jpeg',
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Drinks special',
        description: 'Cool and refreshing drink fo your choice...',
        imagePath: 'lib/images/drinks/drink_4.jpeg',
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
    Food(
        name: 'Drinks special',
        description: 'Cool and refreshing drink fo your choice...',
        imagePath: 'lib/images/drinks/drink_5.jpeg',
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 2.99),
        ]),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address
  String _deliveryAddress = '99 Hollywood Blv';

  // GETTERS
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  //OPERATIONS

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          // ignore: prefer_const_constructors
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // HELPERS
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formateAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("---------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formateAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
