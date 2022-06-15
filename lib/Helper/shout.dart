import 'dart:ffi';

import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shout extends StatelessWidget{
  final String statement;
  final String username;
  final double size;
  final double fontSize;
  final List<Shout>? reply;
  Shout({Key? key,required this.statement,required this.username,this.size = 1.0,this.reply,this.fontSize = 16});
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          )
        )
      ),
      width: screenWidth(context) * 0.95,
      child: Column(
        children:[
          Row(
            children: [
              CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/accountNull.png',
                    width: screenWidth(context)*0.1,
                    height: screenHeight(context)*0.1,
                  ),
                )
              ),
              horizontalSpaceSmall,
              Text(username),
            ],

          ),
          SizedBox(
            height: screenHeight(context)*(0.02 * size),
          ),
          Container(
            width: screenWidth(context),
            height: screenHeight(context) * 0.3,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                  )
              ),
            ),
            child: Column(
              children: [
                Text(
                  statement,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
                SizedBox(
                  height: screenHeight(context)*(0.02 * size),
                ),
              ],
            )
          ),
          Container(
            height: screenHeight(context)*(0.06 * size),
            child: Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(
                  width: screenWidth(context)*0.15,
                ),
                Icon(Icons.block),
                SizedBox(
                  width: screenWidth(context)*0.15,
                ),
                Icon(Icons.reply),
                SizedBox(
                  width: screenWidth(context)*0.15,
                ),
                Icon(Icons.share),
                SizedBox(
                  width: screenWidth(context)*0.15,
                ),
                Icon(Icons.bookmark)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.black,
                  width: 5
                )
              )
            ),
            child: Column(
            ),
          )
        ]
      ),
    );
  }
}