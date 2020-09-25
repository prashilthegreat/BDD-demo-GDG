import 'package:flutter/material.dart';

import '../pages/loginpage_card.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: height * 40.0 / 812,
                  left: width * 70 / 375,
                  right: width * 70 / 375,
                ),
                child: Image.asset(
                  'assets/images/placeholder.png',
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: width * 345 / 375,
                height: height * 556 / 812,
                margin: EdgeInsets.only(
                  top: height * 33 / 812,
                  left: width * 15 / 375,
                  right: width * 15 / 375,
                ),
                child: LoginCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
