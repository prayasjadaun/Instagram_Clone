
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_demo/Pages/util/shop_grid.dart';

class UserShop extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Padding(
           padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shop'),
              Row(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width: 10,),
                  Icon(Icons.menu),
                ],
              ),
            ],
          ),
        )
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.grey[300],
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.search,
                      color: Colors.grey[500],),
                    Container(
                      child: Text('Search', style: TextStyle(color: Colors.grey[500]),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }

}