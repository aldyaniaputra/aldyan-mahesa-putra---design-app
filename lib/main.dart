import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:design_tampilan/View/login.dart';
import 'package:design_tampilan/View/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
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
          SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    verticalSpaceLarge,
                    Center(
                      child: Image.asset(
                        'assets/Logo.png',
                        width: screenWidth(context)*0.3,
                        height: screenWidth(context)*0.3,
                      ),
                    ),
                    verticalSpaceMassive,
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: screenWidth(context)*0.88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Colors.cyan,
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            verticalSpaceLarge,
                            Container(
                              width: screenWidth(context)*64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.lightBlueAccent,
                              ),
                              child: MaterialButton(
                                child: Text('login'),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => TampilanLogin()));
                                },
                              ),
                            ),
                            verticalSpaceMedium,
                            Container(
                              width: screenWidth(context)*64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.lightBlueAccent,
                              ),
                              child: MaterialButton(
                                child: Text('Sign up'),
                                onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => TampilanRegistrasi()));
                                },
                              ),
                            ),
                            verticalSpaceMedium
                          ],
                        )
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
