import 'dart:io';

import 'package:design_tampilan/View/interface/DashBoardSidebar.dart';
import 'package:design_tampilan/View/interface/chat.dart';
import 'package:design_tampilan/View/interface/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'interface/Post.dart';

class TampilanDashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashBoardState();
}
class DashBoardState extends State<TampilanDashboard>{
  int _selectedIndex = 0;

  List nb = <Widget>[
    HomeView(),
    PostView(),
    ChatDirectory()
  ];
  void select(int i){
    setState(() {
      _selectedIndex = i;
    });
  }
  Widget no(BuildContext context, ViewportOffset pos){
    return Column();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DashBoardSideBar(),
      appBar: AppBar(

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: select,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'chat'
          ),
        ]
      ),

      body: nb.elementAt(_selectedIndex)
    );
  }
}