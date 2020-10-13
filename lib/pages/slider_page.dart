import './login_page.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: PageView(
                  key: Key("slider"),
                  scrollDirection: Axis.horizontal,
                  pageSnapping: false,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.amber, Colors.blueGrey],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Center(
                        child: Text(
                          "Page 1",
                          style: TextStyle(fontSize: 34),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.red, Colors.green],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Center(
                        child: Text(
                          "Page 2",
                          style: TextStyle(fontSize: 34),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.lightBlue, Colors.deepOrange],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Center(
                        child: Text(
                          "Page 3",
                          style: TextStyle(fontSize: 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width * 315 / 375,
                  height: height * 45 / 812,
                  margin: EdgeInsets.all(20.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.cyan,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => LoginPage(
                            key: Key("login"),
                          ),
                        ),
                      );
                    },
                    child: Text('Login'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
