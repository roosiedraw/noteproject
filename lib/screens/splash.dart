import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noteproject/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Image(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          image: const AssetImage(
            "assets/images/logo.png",
          ),
        )),
      ),
    );
  }
}
