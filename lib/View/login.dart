import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:design_tampilan/View/dasboard.dart';
import 'package:design_tampilan/View/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TampilanLogin extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
              'assets/BG.jpg',
            fit: BoxFit.cover,
            width: screenWidth(context),
            height: screenHeight(context),
          ),
          SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(top: 300),
                      width: screenWidth(context)*0.88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          color: Colors.cyan,
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "login",
                            style: TextStyle(
                                fontSize: 30
                            ),
                          ),
                          TextFormField(
                            obscureText: false,
                            decoration: InputDecoration(
                                labelText: "username"
                            ),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "password"
                            ),
                          ),
                          verticalSpaceMedium,
                          Container(
                            child: MaterialButton(
                              color: Colors.blue,
                              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TampilanDashboard())),
                              child: Text('login'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account? '),
                              InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => TampilanRegistrasi())),
                                child: Text('Sign Up',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          verticalSpaceMedium
                        ],
                      )
                  ),
                )
              )
          )
        ],
      ),
    );
  }
}