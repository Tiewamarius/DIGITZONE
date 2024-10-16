import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/text_string.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                SizedBox(height: tDefaultSize*0.4),
                SizedBox(height: tDefaultSize,),
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
                SizedBox(height: 20.0,),
                SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                   // Get.to(() => OtpScreen());
                  },
                  child: Text(tNext),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 0,
                    foregroundColor: tWhiteColor,
                    padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
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