import 'package:flutter/material.dart';
 
//void main() => runApp(MyApp());
 
class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img-superpuesta.png'),
                fit: BoxFit.cover
              )
            ),
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}