import 'package:flutter/material.dart';

class LoginCard extends StatefulWidget {
  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();

  void _login(String email, String password, BuildContext context) {
    if (email != "" && password != "") {
      if (email == "test@test.com" && password == "test") {
        Navigator.of(context).pushNamed("/home", arguments: email);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: height * 20 / 812,
              left: width * 15 / 375,
              right: width * 15 / 375,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hey There,",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 10 / 812,
                ),
                Text(
                  "Please enter your credentials",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: height * 40 / 812,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 3 / 812,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Enter e-mail",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 23, 86, 1.0),
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 23, 86, .5),
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onSubmitted: (_) {
                    passwordFocusNode.requestFocus();
                  },
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: height * 15 / 812,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 3 / 812,
                ),
                TextField(
                  focusNode: passwordFocusNode,
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 23, 86, 1.0),
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 23, 86, .5),
                          style: BorderStyle.solid,
                          width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 40 / 812,
                ),
                Container(
                  width: width * 315 / 375,
                  height: height * 45 / 812,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      _login(
                        emailController.text,
                        passwordController.text,
                        context,
                      );
                    },
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
