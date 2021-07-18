import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page() ,
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int jay1=1;

  int jay2=1;

  Random ran = Random();

   randomise(){
    jay1 = ran.nextInt(5)+1;
    jay2 = ran.nextInt(5)+1;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Random picture generator'
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.width*.4,
                    child: Image(
                        image: AssetImage('Images/sp$jay1.jpg')),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width*.4,
                      height: MediaQuery.of(context).size.width*.4,
                      child: Image(image: AssetImage('Images/sp$jay2.jpg'))),
                ],
              ),

              TextButton(

                  onPressed : randomise,
                  child: Text('Next pictures'))
            ],
          ),
        ),
      ),
    );
  }
}

