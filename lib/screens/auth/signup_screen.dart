import 'package:caller_app/constants/colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height /2,
              width: double.infinity,
              color: bgColor,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: MediaQuery.of(context).size.width / 2 - 70,
                    // right: 20,
                    child: Text(
                      'Caller App',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                 

                ],
              
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height /2,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                   Positioned(
                    top: -10,
                    // bottom: -100,
                    child: Container(
                      height: 500,
                      color: Colors.red,
                      width: MediaQuery.of(context).size.width - 200,
                      child: Column(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
