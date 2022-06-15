import 'package:design_tampilan/Helper/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TampilanRegistrasi extends StatelessWidget{
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
                        margin: EdgeInsets.only(top: 150),
                        width: screenWidth(context)*0.88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            width: 5,
                            color: Colors.cyan,
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            verticalSpaceMedium,
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 30
                              ),
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  labelText: 'userID'
                              ),
                            ),
                            TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  labelText: 'username'
                              ),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: 'password'
                              ),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: 'konfirmasi password'
                              ),
                            ),
                            verticalSpaceMedium,
                            Container(
                              child: MaterialButton(
                                color: Colors.blue,
                                onPressed: (){},
                                child: Text('Daftar'),
                              ),
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
