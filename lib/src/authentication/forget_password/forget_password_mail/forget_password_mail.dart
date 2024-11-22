import 'package:flutter/material.dart';

import 'package:digitzone/src//constants/colors.dart';
import 'package:digitzone/src//constants/size.dart';
import 'package:digitzone/src//constants/text_string.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(height: tDefaultSize*0.4),
                const SizedBox(height: tDefaultSize,),
                Form(
                  child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    labelText: tEmail,
                    hintText: tEmail,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                   // Get.to(() => OtpScreen());
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 0,
                    foregroundColor: tWhiteColor,
                    padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: const Text(tNext),
                ),
              )
                  ],
                ))
              ],
            ),
          ),
        ),),
    );
  }
}