import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media_demo/Pages/home_page.dart';
import 'package:social_media_demo/Pages/login_ui.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {


  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginUi()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
            child: Container(
          child: const Text(
            'Instagram',
            style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.w800,
                fontSize: 30,
                fontStyle: FontStyle.italic),
          ),
        )),
      ),
    );
  }
}
