import 'package:firebase_auth/firebase_auth.dart';

bool userLoggedIn() {
  return true;
  return FirebaseAuth.instance.currentUser != null;
}
