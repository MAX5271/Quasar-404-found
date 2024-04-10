import 'dart:ui';

import 'package:a/auth/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({
    super.key,
  });

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  TextEditingController studentidController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Front Page",
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
                Spacer(
                  flex: 3,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 60, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ),
                      );
                    },
                    child: SizedBox(
                      child: Stack(
                        children: [
                          LottieBuilder.asset(
                            'assets/button.json',
                            reverse: true,
                            repeat: false,
                            frameRate: FrameRate(60),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                " ➞ Get Started",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'poppins',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 2)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
