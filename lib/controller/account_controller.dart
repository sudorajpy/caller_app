import 'package:caller_app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // createAccount({email, password}) {
  //   try {
  //     _auth.createUserWithEmailAndPassword(email: email, password: password)
  //         .then((value) => print('value: $value'));
  //   } catch (e) {
  //     print('error: $e');
  //   }
  //   // _auth.createUserWithEmailAndPassword(email: email, password: password)
  //   // .then((value) => print('value: $value'));

  // }
  // loginAccount({email, password}){
  //   _auth.signInWithEmailAndPassword(email: email, password: password)
  //   .then((value) => print('value: $value'));
  // }

  // import 'package:firebase_auth/firebase_auth.dart';

  Future<void> loginUser({email, password}) async {
    FirebaseAuth _auth = FirebaseAuth.instance;

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      Get.toNamed(
        AppRoutes.callContainerScreen,
      );

      // User exists, navigate to the next screen
      // You can add your navigation logic here
    } on FirebaseAuthException catch (e) {
      print('---------------------');
      print(e.code);
      print('---------------------');
      // print(e.message);
      if (e.code == 'USER_NOT_FOUND') {
        // User doesn't exist, create an account
        await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        Get.toNamed(
          AppRoutes.callContainerScreen,
        );
        // Now, you can navigate to the next screen
        // since the account has been created
      } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        // Password doesn't match, handle accordingly
        // You might want to show an error message to the user
        Get.snackbar('Invalid Creditials', 'Password is wrong');
      }
    }
  }
}
