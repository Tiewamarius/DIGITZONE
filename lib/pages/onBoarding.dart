import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  const Color.fromARGB(255, 248, 245, 245),
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
                  onTap: (){
                    
                  },
                  child: Container(
                    margin: const  EdgeInsets.only(right: 22),
                    padding: const EdgeInsets.all(45),
                    decoration: const BoxDecoration(
                      color:Colors.grey,shape: BoxShape.circle),
                    child: const Text("START",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
