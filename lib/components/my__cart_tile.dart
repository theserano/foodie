import 'package:flutter/material.dart';
import 'package:foodie/components/my_quantity_selector.dart';
import 'package:foodie/models/cart_item.dart';
import 'package:foodie/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTitle extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTitle({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 120,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(
                    width: 10,
                  ),

                  // name and price
                  SizedBox(
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // food name
                        Text(
                          cartItem.food.name,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // food price
                        Text('\$ ${cartItem.food.price.toString()}'),
                      ],
                    ),
                  ),

                  const Spacer(),

                  //increment or decrement quantity
                  QuantitySelector(
                      food: cartItem.food,
                      quantity: cartItem.quantity,
                      onDecrement: () {
                        restaurant.removeFromCart(cartItem);
                      },
                      onIncrement: () {
                        restaurant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      })
                ],
              ),
            ),

            // addons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: cartItem.selectedAddons.map((addon) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                      label: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // addon name
                          Text(addon.name),
                    
                          // addon price
                          Text(' (\$${addon.price})',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          ),
                          ),
                        ],
                      ),
                      shape: StadiumBorder(side: BorderSide(
                        color: Theme.of(context).colorScheme.primary
                      )),
                      onSelected: (value) {},
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 12),
                    ),
                  );
                }).toList(), // Convert the iterable into a list of widgets
              ),
            ),
          ],
        ),
      ),
    );
  }
}
