import 'package:caller_app/routes/app_routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signupUser({email, password, name, phone}) async {
    // FirebaseAuth _auth = FirebaseAuth.instance;

    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('----------------');
      print(userCredential);
      // Now, update the user information
      User user = userCredential.user!;

      await user.updateDisplayName(name);
      // await user.updatePhoneNumber(phone);

      // await user.updateProfile(
      //     displayName: 'Your Display Name', photoURL: 'URL_to_your_photo');

      // // Verify email if needed
      // await user.sendEmailVerification();

      print('Account created successfully!');
      print(userCredential.user!.uid);

      await saveData(
          email: email,
          password: password,
          name: name,
          phone: phone,
          userId: userCredential.user!.uid);

      Get.toNamed(
        AppRoutes.callContainerScreen,
      );
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Something wen wrong', 'error: $e.');
    }
  }

  Future<void> loginUser({email, password}) async {
    // FirebaseAuth _auth = FirebaseAuth.instance;

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

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  saveData({email, password, name, phone, userId}) async {
    await firestore.collection('users').doc(userId).set({
      'email': email,
      'password': password,
      'name': name,
      'phone': phone,
    });
  }
}
