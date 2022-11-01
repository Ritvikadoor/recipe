import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reciepe_app/app/model/models.dart';
import 'package:reciepe_app/app/view/home_screen/view/dishes_screen.dart';
import 'package:reciepe_app/app/view_model/controllers/home_controllers.dart';
import 'package:reciepe_app/app/view_model/services/api_services.dart';

class RecipeDishesTab extends StatefulWidget {
  @override
  RecipeDishesTabState createState() => RecipeDishesTabState();
}

class RecipeDishesTabState extends State<RecipeDishesTab>
    with SingleTickerProviderStateMixin {
  List<Widget> tabs = [];
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return FutureBuilder<List<DishesModel>>(
              future: ApiServices().getingRecipeData(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(
                    child: Text("Something went wrong"),
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return DefaultTabController(
                    length: HomeController().tableMenuNames.length,
                    child: Scaffold(
                      appBar: AppBar(
                        backgroundColor: Colors.white,
                        bottom: PreferredSize(
                          preferredSize: const Size.fromHeight(30),
                          child: Container(
                            color: Colors.white,
                            height: 50.0,
                            child: TabBar(
                              indicatorColor: Colors.red,
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.red,
                              tabs: HomeController().tableMenuNames,
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
                }
              });
        });
  }
}
