import 'package:flutter/material.dart';
import 'package:foodie/components/my_button.dart';
import 'package:foodie/models/food.dart';
import 'package:foodie/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    // initialize the selectedAddons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    //close the current food page and go back to the menu
    Navigator.pop(context);

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in food.availableAddons) {
      if (selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.food.imagePath,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // food name
                    Text(
                      widget.food.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    // description
                    Text(
                      '\$ ${widget.food.price.toString()}',
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Text(widget.food.description),

                    const SizedBox(
                      height: 10,
                    ),

                    Divider(
                      color: Theme.of(context).colorScheme.secondary,
                    ),

                    Text(
                      'Add-ons',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // addons
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: widget.food.availableAddons.length,
                        itemBuilder: (context, index) {
                          // get individual addon
                          Addon addon = widget.food.availableAddons[index];

                          // return a checkbox ui
                          return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$ ${addon.price.toString()}',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              ),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              //button -> add to cart
              MyButton(
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
                  text: 'Add to cart'),
              const SizedBox(
                height: 25.0,
              )
            ],
          ),
        )),
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: const EdgeInsets.only(left: 25.0),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}
