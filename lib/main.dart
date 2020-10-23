
import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/home.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
    )
  );
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> with AfterLayoutMixin{
  
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img-superpuesta.png'),
          fit: BoxFit.cover
        )
      ),
      child: Center(
        child: Theme(
          data:ThemeData(accentColor: Colors.white),
                  child: CircularProgressIndicator(
            
          ),
        ),
      ),
    );
  }

 

  onDoneLoading() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeApp()));
  }

  @override
  void afterFirstLayout(BuildContext context) async {
    await Future.delayed(Duration(seconds:5));

    onDoneLoading();
  }
  
}
