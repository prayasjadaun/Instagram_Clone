import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;
  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(text),
          ],
        ),
    );
  }
}
