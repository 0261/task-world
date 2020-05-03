import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_world/screens/homeScreen.dart';
import 'package:task_world/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
      ),
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundPrimeColor,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SvgPicture.asset('assets/images/undraw_task_31wc.svg'),
              Container(
                padding: const EdgeInsets.only(top: 52),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Task Manager \n App UI Concept',
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Manage your all daily tasks and goals \n easily likee never before. Easy to manage',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 52, left: 32, right: 32),
                width: double.infinity,
                child: FlatButton(
                  padding: const EdgeInsets.all(20),
                  child: Text('Get Started Now',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }),
                    );
                  },
                  color: Color(0xFF10EAF0),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                ),
              )
            ],
          ),
        ));
  }
}
