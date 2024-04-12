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

class SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  static const String LOGINKEY = 'login';

  @override
  void initState() {
    super.initState();
    whereToGo();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation = Tween(begin: 50.0, end: 300.0).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
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

  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(LOGINKEY);
    Timer(const Duration(seconds: 4), () {
      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginUi()));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginUi()));
      }
    });
  }
}
