import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui/login/onboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  WeTalkHomePge(),
    );
  }
}

class WeTalkHomePge extends StatefulWidget {
  const WeTalkHomePge({Key? key}) : super(key: key);

  @override
  State<WeTalkHomePge> createState() => WeTalkHomePgeState();
}

class WeTalkHomePgeState extends State<WeTalkHomePge> {

  @override
  void initState() {
    // TODO: implement initState
        Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardUIScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(),
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image.asset('images/pizza1.png', width:300, height:100)
                Image.asset('assets/logo.PNG',width: 100,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'We Talk',
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 36),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 550,
            right: 00,
            child: Icon(
              Icons.access_alarms,
              size: 45,
            ),
          )
        ],
      ),
    );
  }
}


class VSpace{
static const sm= SizedBox(height:20);
static const l= SizedBox(height:30);
static const xl= SizedBox(height:40);
}
class HSpace{
static const sm= SizedBox(width:20);
static const l= SizedBox(width:30);
static const xl= SizedBox(width:40);
}