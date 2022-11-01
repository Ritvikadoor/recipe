import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reciepe_app/app/model/models.dart';
import 'package:reciepe_app/app/view/home_screen/widgets/card_dishes.dart';
import 'package:reciepe_app/app/view_model/controllers/home_controllers.dart';
import 'package:reciepe_app/app/view_model/services/api_services.dart';

class DishesScreen extends StatelessWidget {
  const DishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<HomeController>(context, listen: false).getDishesName();
      await Provider.of<HomeController>(context, listen: false)
          .getDishesPrice();
    });

    return Consumer<HomeController>(builder: (context, value, _) {
      return SizedBox(
          height: 500,
          child: ListView.builder(
              itemCount: value.tableViews.length,
              itemBuilder: (context, index) {
                return RecipeCard(
                  title: Text(
                    value.tableViews[index].toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  price: Row(
                    children: [
                      Text(value.tableprice[index].toString()),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("SAR")
                    ],
                  ),
                );
              }));
    });
  }
}
