import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_demo/Pages/util/account_tab1.dart';
import 'package:social_media_demo/Pages/util/bubble_stories.dart';

import '../util/account_tab2.dart';
import '../util/account_tab3.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Profile Picture
                  Container(
                    child: CircleAvatar(backgroundImage: AssetImage('assets/images/IMG_0694.jpeg'),),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(

                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '230',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '10M',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '20',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Prayas Jadaun',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text('I code cool things'),
                  ),
                  Text(
                    '@codewithprayas',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          'Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          'Share Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          'Insights',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    BubbleStories(text: 'Story 1',),
                    BubbleStories(text: 'Story 2'),
                    BubbleStories(text: 'Story 3'),
                    BubbleStories(text: 'Story 4'),
                    BubbleStories(text: 'Story 5'),
                    BubbleStories(text: 'Story 6'),
                    BubbleStories(text: 'Story 7'),
                    BubbleStories(text: 'Story 8'),
                    BubbleStories(text: 'Story 9'),
                    BubbleStories(text: 'Story 10'),
                  ],
                ),
              ),
            ),
            const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),

              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ]),
            Expanded(child: TabBarView(
              children: [
                AccountTab1(),
                AccountTab2(),
                AccountTab3(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
