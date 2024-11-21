import 'package:flutter/material.dart';

import '../../../pages/home.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/size.dart';
import '../../../constants/text_string.dart';
import '../forget_password/forget_password_option/forget_password_modal_bottom_sheet.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              //width: 500,
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(vertical: tButtonHeight),
                    child: Column(
                      children: [
                        const Image(
                            image: AssetImage(tLoginimage), height: 180),
                        Text(
                          tLoginTitle,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ),
                  Form(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: tFormHeight - 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person_outlined),
                              labelText: tEmail,
                              hintText: tEmail,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: tFormHeight - 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock),
                              labelText: tPassword,
                              hintText: tEmail,
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.visibility_off,
                                  )),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: tFormHeight - 20,
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                    ForgetPasswordScreen
                                        .buildShowModalBottomSheet(context);
                                  },
                                  child: const Text(tForgetPassword))),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>const HomePage()));
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 244, 40, 74),
                                elevation: 0,
                                foregroundColor: tWhiteColor,
                                padding: const EdgeInsets.symmetric(
                                    vertical: tButtonHeight),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Text(tLogin),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text('OU'),
                              const SizedBox(height: tFormHeight - 20),
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton.icon(
                                  icon: const Image(
                                      image: AssetImage(tGooglelogo),
                                      width: 40),
                                  onPressed: () {},
                                  label: Text(tSignInWithGoogle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                  style: OutlinedButton.styleFrom(
                                      elevation: 0,
                                      foregroundColor: tSecondaryColor,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: tButtonHeight - 5),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ),
                              const SizedBox(height: tFormHeight - 20),
                              TextButton(
                                  onPressed: () {},
                                  child: Text.rich(TextSpan(
                                      text: tDontHaveAccountg,
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                      children: const [
                                        TextSpan(
                                          text: tSignUp,
                                          style: TextStyle(
                                              color: Colors.blueAccent),
                                        )
                                      ]))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
