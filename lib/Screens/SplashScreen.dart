import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed("/login"));

    /*Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed("/login");
    });*/

    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/tazzatv_logo.png", width: 300, height: 300,),
      ),
    );
  }
}
