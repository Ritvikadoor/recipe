import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reciepe_app/app/view/home_screen/widgets/card_dishes.dart';
import 'package:reciepe_app/app/view_model/controllers/home_controllers.dart';

class DishesScreen extends StatelessWidget {
  const DishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<HomeController>(context, listen: false).getDishesName();
    });
    return Consumer<HomeController>(builder: (context, value, _) {
      log(value.tableViews.length.toString());
      return Container(
        height: 500,
        child: ListView.builder(
          itemCount: value.tableViews.length,
          itemBuilder: (context, index) {
            return RecipeCard(
              title: Text(value.tableViews[index].toString()),
            );
          },
        ),
      );
    });
  }
}
