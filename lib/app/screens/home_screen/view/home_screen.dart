import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:reciepe_app/app/screens/auth_screen/view/auth_screen.dart';
import 'package:reciepe_app/app/screens/home_screen/widgets/recipe_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          log("Snapshot has data");
          return const RecipeListScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Something Went wrong'),
          );
        } else {
          log("its getting not as we expected");
          return const AuthScreen();
        }
      },
    );
  }
}
