import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:social_media_demo/Pages/util/bubble_stories.dart';
import 'package:social_media_demo/Pages/util/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "_thakurprayas",
    "pratibha_kaushik",
    "khushnam_chauhan",
    "aditi_kaushik",
    "dhanno",
    "mayank_berry",
    "muskan",
    "dimple_tanwar",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(
                  fontWeight: FontWeight.w800, fontStyle: FontStyle.italic),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.message_sharp),
              ],
            ),
          ],
        ),
      ),
      body:
          //Stories
          Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),

          //Posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: people[index]);
                }),
          )
        ],
      ),
    );
  }
}
