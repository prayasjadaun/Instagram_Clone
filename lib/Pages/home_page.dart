import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media_demo/Pages/screens/account.dart';
import 'package:social_media_demo/Pages/screens/shop.dart';
import 'package:social_media_demo/Pages/screens/home.dart';
import 'package:social_media_demo/Pages/screens/reels.dart';
import 'package:social_media_demo/Pages/screens/search.dart';
import 'package:social_media_demo/Pages/splash_page.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Navigate around the bottom nav bar
  int _sellectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _sellectedIndex = index;
    });
  }
  //different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserShop(),
    UserReels(),
    UserAccount(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_sellectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _sellectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
        ],
      ),
    );
  }
}