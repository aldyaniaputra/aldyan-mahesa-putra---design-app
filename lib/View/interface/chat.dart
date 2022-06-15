import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDirectory extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CDstate();
}
class CDstate extends State<ChatDirectory>{
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Tambah percakapan baru'),
            ),
            ListTile(
              leading: Container(
                width: screenHeight(context) * 0.1,
                child: ClipOval(
                  child: Image.asset(
                    'assets/accountNull.png',
                    width: screenHeight(context) * 0.1,
                    height: screenHeight(context) * 0.1,
                  ),
                ),
              ),
              title: Text('temen kamu'),
            )
          ],
        )
    );
  }
}