import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  final List<String> userPosts = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(child:
              Image.asset('assets/images/IMG_0694.jpeg'),

            ),
          );
        });
  }
}
