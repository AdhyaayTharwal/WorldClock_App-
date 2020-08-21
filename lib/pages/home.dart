
import 'package:flutter/cupertino.dart';

import 'home.dart';
import 'loading.dart';
import 'changeLocation.dart';
import 'main.dart';

import 'package:flutter/material.dart';
/*
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data= {};
  @override

  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty? data: ModalRoute.of(context).settings.arguments;

    print(data);
    String bkImg = data['isDaytime']? 'day.jpg' : 'night.jpg';
    Color txtColor = data['isDaytime']? Colors.black : Colors.white;
    return Scaffold(
      backgroundColor: Colors.grey[900],

    body:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/$bkImg'),
          fit: BoxFit.cover,
        )
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 250, 5, 200),
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Center(
                child: FlatButton.icon(onPressed: () async {
                     dynamic result= await Navigator.pushNamed(context, '/location');
                      if (result!=null){setState(() {
                       data={
                         'time' : result['time'],
                         'location': result['location'],
                         'flag': result['flag'],
                         'isDayTime': result['isDayTime'],
                         'url':result['url'],

                       };
                     });}
                }, icon: Icon(Icons.location_on), label: Text('Choose Location')),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(data['location'],style: TextStyle(
                  color:txtColor,fontSize: 35
                ),),

              ],

            ),
            SizedBox(height: 10,),
            Text(data['time'],style: TextStyle(fontSize: 60,color:txtColor),),
          ],
        ),
      ),
    )

     );
  }
}*/


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

//  @override
//  void initState() {
//    super.initState();
//  }

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    // set background image
    String bkImg = data['isDaytime']? 'day.jpg' : 'night.jpg';
    Color txtColor = data['isDaytime']? Colors.black : Colors.white;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bkImg'),
                fit: BoxFit.cover,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, '/location');
                    if(result != null){
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'isDaytime': result['isDaytime'],
                          'flag': result['flag']
                        };
                      });
                    }
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                    data['time'],
                    style: TextStyle(
                        fontSize: 66.0,
                        color: Colors.white
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
