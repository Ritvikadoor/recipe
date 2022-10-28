import 'package:flutter/material.dart';
import 'package:reciepe_app/app/view/home_screen/widgets/card_dishes.dart';

class DishesScreen extends StatelessWidget {
  const DishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const RecipeCard();
        },
      ),
    );
  }
}
