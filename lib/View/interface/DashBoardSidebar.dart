import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:design_tampilan/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoardSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('kamu'),
            accountEmail: Text('kamu@emailmu.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/accountNull.png',
                  width: 100,
                  height: 100,
                ),
              )
            ),
          ),
          ListTile(
            title: Text('kamu'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('temen temen kamu'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('setting aplikasi'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('logout'),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage())),
          )
        ],
      ),
    );
  }
}