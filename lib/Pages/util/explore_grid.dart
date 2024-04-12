 import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
   const ExploreGrid({super.key});

   @override
   Widget build(BuildContext context) {
     return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
     ), itemBuilder: (context, index) {
       return Padding(padding: EdgeInsets.all(4.0),
       child: Container(
         color: Colors.grey[300],
       ),);
     });
   }
 }
