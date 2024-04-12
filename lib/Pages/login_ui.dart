import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_demo/Pages/home_page.dart';
import 'package:social_media_demo/Pages/square_tile.dart';
import 'package:social_media_demo/Pages/text_fields.dart';
import 'my_button.dart';

class LoginUi extends StatelessWidget {
  LoginUi({super.key});

  var nameController = TextEditingController();

  var passController = TextEditingController();

  get signUserIn => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[200],
          child: Center(
            child: ListView(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Center(
                    child: Text(
                      'Welcome back you\'ve been missed!',
                      style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextFields(
                  controller: nameController,
                  hintText: 'Username',
                  obsureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextFields(
                  controller: passController,
                  hintText: 'Password',
                  obsureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MyButton(
                  onTap: signUserIn,
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      )),
                      Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text('Or continue with', style: TextStyle(color: Colors.grey[700]),),),

                      Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.grey[400],
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/images/google.png'),
                    SizedBox(width: 20,),
                    SquareTile(imagePath: 'assets/images/appl.png'),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member? ',style: TextStyle(color: Colors.grey[700]),),
                     const SizedBox(width: 5,),
                     const Text('Register now', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
