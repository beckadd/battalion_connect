import 'package:battalion_connect/apis/auth.dart';
import 'package:battalion_connect/screens/Login.dart';
import 'package:battalion_connect/screens/Summary.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const BN_CONNECT());
}

// ignore: camel_case_types
class BN_CONNECT extends StatelessWidget {
  const BN_CONNECT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Battalion Connect',
      home: Navigator(pages: [MaterialPage(child: Summary())],)
    );
  }
}