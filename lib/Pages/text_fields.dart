import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  var nameController = TextEditingController();

  var passController = TextEditingController();
  MyTextFields({
    super.key,
    required this.hintText,
    required this.controller,
    required this.obsureText,
  });
  final controller;
  final String hintText;
  final bool obsureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(21),
          ),
        ),
      ),
    );
  }
}
