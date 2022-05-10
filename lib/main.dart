import 'package:flutter/material.dart';
import 'package:tazzatv/Screens/LoginScreen.dart';
import 'package:tazzatv/Screens/SplashScreen.dart';

void main() {
  runApp(const TazzaTv());
}

class TazzaTv extends StatelessWidget {
  const TazzaTv({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TazzaTv',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(),
      routes: {
        "/login": (context) =>  const LoginScreen(),
      },
    );
  }
}
