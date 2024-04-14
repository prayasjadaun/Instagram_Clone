import 'dart:async';

import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Profile Photo
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/IMG_0694.jpeg'),
                      
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  //Name
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
        //Posts
        Container(
          height: 400,
          width: 500,
          // color: Colors.grey[400],
          child: Image.asset('assets/images/IMG_0694.jpeg'),
        ),
        //below the post --> buttons, comments
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        //comments
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text(' liked by '),
              Text(
                'khushnam_chauhan ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 9),
          child: RichText(
              text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(
                  text:
                      ' If we want users to like our software, we should design it to behave like a likable person'),
            ],
          )),
        )
      ],
    );
  }
}
