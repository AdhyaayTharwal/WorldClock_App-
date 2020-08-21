import 'package:flutter/material.dart';
import 'package:time_app/pages/worldTime.dart';
import 'worldTime.dart';
import 'home.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> places = [
    WorldTime(location:'Kolkata' ,flag: 'india.png',url:'Asia/Kolkata',),
    WorldTime(location:'London' ,flag: 'india.png',url:'Europe/London',),
    WorldTime(location:'Berlin' ,flag: 'india.png',url:'Europe/Berlin',),
    WorldTime(location:'Newyork' ,flag: 'india.png',url:'America/New_York',),
    WorldTime(location:'Seoul' ,flag: 'india.png',url:'Asia/Seoul',),
  ];
  void updateTime(index) async {
    WorldTime instance = places[index];
    await instance.getTime();
    Navigator.pop(context,{ 'location':instance.location,
      'url':instance.url,
      'flag':instance.flag,
      'time':instance.time,
      'isDaytime':instance.isDaytime,});


  }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor:Colors.grey[800],
        title: Text('Time App',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        elevation: 5,

      ),
      body: ListView.builder(itemCount: places.length,
          itemBuilder: (context,index){
        return  Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/${places[index].flag}'),
            ),
            title: Text(places[index].location),
            onTap: (){
              return updateTime(index);

            },
          ),
        );
          },)
    );
  }
}  /*
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}*/