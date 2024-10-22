import 'package:digitzone/src/authentication/screens/login/login_screen.dart';
import 'package:digitzone/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Container(
          margin: const EdgeInsets.only(top: 30),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/microsoft.jpg"),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("EXPLORER LES MEILLEURS \nLICENCES Microsoft",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 280,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Get.to(() => const LoginScreen()),
                  child: Container(
                    margin: const  EdgeInsets.only(right: 22),
                    padding: const EdgeInsets.all(45),
                    decoration: const BoxDecoration(
                      color:tPrimaryColor,shape: BoxShape.circle),
                    child: const Text("START",style:TextStyle(color:Colors.white,
                      fontSize: 20,fontWeight: FontWeight.bold)),
                    
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
