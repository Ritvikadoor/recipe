import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reciepe_app/app/screens/auth_screen/view_model/auth_services.dart';

class LoggedInWidget extends StatelessWidget {
  const LoggedInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Logged In"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logOut();
              },
              child: Text("Log Out"))
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Profile",
                style: TextStyle(fontSize: 24),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL!),
              ),
              Text(
                user.displayName.toString(),
                style: TextStyle(fontSize: 24),
              ),
              Text(
                user.email.toString(),
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
