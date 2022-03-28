import 'package:battalion_connect/apis/auth.dart';

import 'screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const BN_CONNECT());
}

// ignore: camel_case_types
class BN_CONNECT extends StatelessWidget {
  const BN_CONNECT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Battalion Connect',
        initialRoute: userLoggedIn() ? Summary.route : Login.route,
        routes: {
          Summary.route: (context) => Summary(),
          Login.route: (context) => Login(),
          Post.route: (context) => Post(),
          Inventory.route: (context) => Inventory()
        });
  }
}

//TODO: Setup all navigation: how do you do this?