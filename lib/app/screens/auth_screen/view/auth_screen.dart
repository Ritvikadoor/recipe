import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:reciepe_app/app/screens/auth_screen/view_model/auth_services.dart';
import 'package:reciepe_app/app/screens/auth_screen/widgets/button_signin.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 300,
              width: 200,
              child: SizedBox(
                child: Image.asset("assets/images/mascot_firebase-logo.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ButtonSignin(
                  text: "Google",
                  color: Colors.blue,
                  icon: IconButton(
                    icon: const FaIcon(FontAwesomeIcons.google),
                    onPressed: () {},
                  ),
                  onPressed: () {
                    provider.googleLogin();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonSignin(
                  text: "Phone",
                  color: Colors.green,
                  icon: IconButton(
                    icon: FaIcon(FontAwesomeIcons.phone),
                    onPressed: () {},
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
