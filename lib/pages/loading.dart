import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'worldTime.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>{

  void setUpWorldTime() async {

    WorldTime instance = WorldTime(location: 'Kolkata',flag:'germany.png',url:'Asia/Kolkata');
    await instance.getTime();

     Navigator.pushReplacementNamed(context, '/home',arguments: {
       'location':instance.location,
       'flag':instance.flag,
       'time':instance.time,
       'isDaytime':instance.isDaytime,
     });
     print('loading works');
  }
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
     setUpWorldTime();
    print('init works');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingFour(

          color: Colors.black,
          size: 50.0,
        ),
      )


    );
  }
}/*
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
            child: SpinKitFadingCube(
              color: Colors.white,
              size: 50.0,
            )
        )
    );
  }
}

*/