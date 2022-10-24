import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reciepe_app/app/screens/home_screen/view/dishes_screen.dart';

final list = ['hey', 'bey', 'yoo'];

class RecipeListScreen extends StatefulWidget {
  const RecipeListScreen({super.key});

  @override
  State<RecipeListScreen> createState() => _RecipeListScreenState();
}

class _RecipeListScreenState extends State<RecipeListScreen>
    with SingleTickerProviderStateMixin {
  String title = "Home";

  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          RecipeDishes(),
        ],
      ),
    );
  }
}

class RecipeDishes extends StatefulWidget {
  @override
  RecipeDishesState createState() => RecipeDishesState();
}

class RecipeDishesState extends State<RecipeDishes>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
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
        body: const TabBarView(
          children: [
            DishesScreen(),
            Text("TAB TWO CONTENT"),
            Text("TAB THREE CONTENT"),
            Text("TAB FOUR CONTENT"),
            Text("TAB FIVE CONTENT"),
          ],
        ),
      ),
    );
  }
}
