import 'package:digitzone/src/constants/colors.dart';
import 'package:digitzone/src/screens/bottomBar.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Scaffold(
          backgroundColor: background,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
            Image.asset("assets/microsoft.jpg"),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text("EXPLORER LES MEILLEURS \nChez digitZONE",
              style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const BottomNavigationBart()));
                    },
                  child: Container(
                    margin: const  EdgeInsets.only(right: 22),
                    padding: const EdgeInsets.all(40),
                    decoration: const BoxDecoration(
                      color:tPrimaryColor,shape: BoxShape.circle),
                    child: const Text("START",style:TextStyle(color:Colors.white,
                      fontSize: 20,fontWeight: FontWeight.bold)),
                    
                  ),
                ),
              ],
            )
                      ],
                    ),
          )),
    );
  }
}