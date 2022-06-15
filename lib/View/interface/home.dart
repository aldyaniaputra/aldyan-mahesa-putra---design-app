import 'dart:math';

import 'package:design_tampilan/AppLogic/accountManagement.dart';
import 'package:design_tampilan/Helper/shout.dart';
import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
}
class HomeState extends State<HomeView>{
  String statement = '';
  TextEditingController _controller = TextEditingController();
  void setStatement(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('save')));
    setState(() {
      statement = _controller.text;
    });
  }

  void createScroll(){
    setState(() {
      statement = _controller.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: AccountManagement.post
        ),
      ),
    );
  }
}