import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:reciepe_app/app/view/auth_screen/view_model/auth_services.dart';
import 'package:reciepe_app/app/view/home_screen/view/home_screen.dart';
import 'package:reciepe_app/app/view_model/controllers/home_controllers.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final ScaffoldMessengerState? scaffold = scaffoldKey.currentState;

    return MultiProvider(
        providers: [
          ChangeNotifierProvider<GoogleSignInProvider>(
            create: (_) => GoogleSignInProvider(),
          ),
          ChangeNotifierProvider<HomeController>(
            create: (_) => HomeController(),
          ),
        ],
        child: MaterialApp(
          scaffoldMessengerKey: scaffoldKey,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        ));
  }
}
