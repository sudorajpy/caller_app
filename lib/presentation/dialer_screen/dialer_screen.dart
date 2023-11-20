import 'package:flutter/material.dart';
import 'package:flutter_dialpad/flutter_dialpad.dart';

class DialerScreen extends StatelessWidget {
  const DialerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DialPad(
          
                enableDtmf: true,
                outputMask: "+91 000-0000",
                hideSubtitle: false,
                backspaceButtonIconColor: Colors.red,
                buttonTextColor: const Color.fromARGB(255, 14, 0, 0),
                dialOutputTextColor: const Color.fromARGB(255, 136, 11, 11),
                keyPressed: (value){
                  print('$value was pressed');
                },
                makeCall: (number){
                  print(number);
                }
            )
        
      )
    );
  }
}
