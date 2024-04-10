import 'dart:ui';

import 'package:a/auth/signup.dart';
import 'package:a/common/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController signin = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          LottieBuilder.asset(
            height: double.infinity,
            width: double.infinity,
            'assets/backf.json',
            fit: BoxFit.cover,
            frameRate: const FrameRate(60),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: const SizedBox(
                height: double.infinity,
                width: double.infinity,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: SizedBox(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    " This app serves as a centralized platform for academic and social engagement, enhancing the overall student experience.",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                      leading: Icon(Icons.person),
                      hintText: "Student Id",
                      controller: signin),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                      leading: Icon(Icons.key),
                      hintText: "Password",
                      controller: passwordController),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[100],
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.blue[300],
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Continue with google",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.grey[100],
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.blue[300],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Spacer(flex: 5)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
