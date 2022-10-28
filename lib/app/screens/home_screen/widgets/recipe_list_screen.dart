import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reciepe_app/app/screens/home_screen/view/dishes_screen.dart';

class RecipeDishes extends StatefulWidget {
  @override
  RecipeDishesState createState() => RecipeDishesState();
}

class RecipeDishesState extends State<RecipeDishes>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
  }
}
