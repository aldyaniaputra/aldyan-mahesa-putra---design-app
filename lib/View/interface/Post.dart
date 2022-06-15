import 'package:design_tampilan/AppLogic/accountManagement.dart';
import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeState();
}
class HomeState extends State<PostView>{
  String statement = '';
  TextEditingController _controller = TextEditingController();
  void setStatement(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('save')));
    setState(() {
      statement = _controller.text;
      AccountManagement.Posting(statement);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                height: screenHeight(context)*0.35,
                child: TextField(
                  expands: true,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'unkapan pendapat',
                  ),
                  controller: _controller,
                ),
              ),
              MaterialButton(
                child: Text('Post'),
                onPressed: setStatement,
              ),
              Column(
                children: AccountManagement.PostKu,
              )
            ]
        ),
      ),
    );
  }
}