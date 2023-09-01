import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_button/HomePage.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 5),(){
    //   Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (cnx){return HomePage();}));
    // });
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (cnx){return HomePage();}));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('progress Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset('assets/cpc-logo.jpg'),
            Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.orangeAccent),
                backgroundColor: Colors.purple,
                strokeWidth: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
