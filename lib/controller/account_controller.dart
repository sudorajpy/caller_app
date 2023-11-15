import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  createAccount({email, password}) {
    _auth.createUserWithEmailAndPassword(email: email, password: password);
  }
  loginAccount({email, password}){
    _auth.signInWithEmailAndPassword(email: email, password: password)
    .then((value) => print('value: $value'));
  }
}
