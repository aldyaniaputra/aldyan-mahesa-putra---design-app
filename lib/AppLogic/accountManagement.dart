
import 'dart:math';

import 'package:design_tampilan/Helper/shout.dart';
import 'package:flutter/material.dart';

class AccountManagement{
  static List<Shout> post = [
    Shout(statement: Random(TimeOfDay.now().minute).toString(),username: 'user 1',),
    Shout(statement: Random(TimeOfDay.now().minute).toString(),username: 'user 2',),
    Shout(statement: Random(TimeOfDay.now().minute).toString(),username: 'user 3',),
    Shout(statement: Random(TimeOfDay.now().minute).toString(),username: 'user 4',),
  ];
  static List<Shout> PostKu = [];
  static void Posting(String Statement){
    post.add(Shout(statement: Statement,username: 'kamu',));
    PostKu.add(Shout(statement: Statement,username: 'kamu',));
  }
}