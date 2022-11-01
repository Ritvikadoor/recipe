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
  List<DishesModel> getAllDatas = [];
  List<DishesModel> tabs = [];

  @override
  Widget build(BuildContext context) {
    tabs = HomeController().getAllDatas;
    return FutureBuilder<List<DishesModel>>(
        future: ApiServices().getingRecipeData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Something went wrong"),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {}
          return DefaultTabController(
            length: 5,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(30),
                  child: Container(
                    color: Colors.white,
                    height: 50.0,
                    child: const TabBar(
                      indicatorColor: Colors.red,
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.red,
                      tabs: [
                        Tab(
                          text: "ONE",
                        ),
                        Tab(
                          text: "TWO",
                        ),
                        Tab(
                          text: "THREE",
                        ),
                        Tab(
                          text: "FOUR",
                        ),
                        Tab(
                          text: "FIVE",
                        ),
                      ],
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
              ]),
            ),
          );
        });
  }
}
