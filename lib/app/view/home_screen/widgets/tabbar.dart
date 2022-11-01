import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reciepe_app/app/view/home_screen/view/dishes_screen.dart';
import 'package:reciepe_app/app/view_model/controllers/home_controllers.dart';

class RecipeDishesTab extends StatelessWidget {
  const RecipeDishesTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Provider.of<HomeController>(context, listen: false).getAllData();
    });
    return Consumer<HomeController>(builder: (context, value, _) {
      return value.tableMenuNames.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : DefaultTabController(
              initialIndex: 0,
              length: value.tableMenuNames.length,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(30),
                    child: Container(
                      color: Colors.white,
                      height: 50.0,
                      width: double.infinity,
                      child: TabBar(
                        isScrollable: true,
                        indicatorColor: Colors.red,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.red,
                        tabs: value.tableMenuNames,
                      ),
                    ),
                  ),
                ),
                body: const TabBarView(children: [
                  DishesScreen(),
                  Text("sddgins"),
                  Text("cijsb"),
                  Text("cijsb"),
                  Text("cijsb"),
                  Text("cijsb"),
                ]),
              ),
            );
    });
  }
}
