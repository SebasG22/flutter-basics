import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //       body: new HomePage(color: Colors.blueAccent)),
    // );
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Platform.isAndroid ? Switch(
          value: true,
          onChanged: (v) => null,
        ) :
        CupertinoSwitch(
          value: true,
          onChanged: (v) => null,
        ) 
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final Color color;

  HomePage({this.color = Colors.red});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      child: Text('$count'),
      onPressed: () {
        setState(() {
          count++;
        });
      },
    )
        // child: Container(
        //   child: Container(
        //     width: 50,
        //     height: 50,
        //     color:widget.color
        //   ),
        // ),
        );
  }
}
