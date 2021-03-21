import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Remote',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,45,15,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.airline_seat_individual_suite_rounded), label: Text('Sleep')),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.power_off ), label: Text('Power Off'), color: _selected ? Colors.red : Colors.white,),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(15,10,15,10),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('VOLUMN', style: TextStyle(color: Colors.white),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.remove_circle, color: Colors.red,), label: Text('Down')),
                      Text(' '),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle, color: Colors.green,), label: Text('Up')),]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('BRIGHTNESS', style: TextStyle(color: Colors.white),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.remove_circle, color: Colors.red,), label: Text('Down')),
                      Text(' '),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle, color: Colors.green,), label: Text('Up')),]),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(15,10,15,10),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(onPressed: (){}, icon: Icon(Icons.skip_next ), color: Colors.white, iconSize: 34.0),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(75.0,5,75.0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(onPressed: (){}, icon: Icon(Icons.fast_rewind ), color: Colors.white, iconSize: 34.0),
                      IconButton(onPressed: (){}, icon: Icon(Icons.pause ), color: Colors.white, iconSize: 34.0),
                      IconButton(onPressed: (){}, icon: Icon(Icons.fast_forward ), color: Colors.white, iconSize: 34.0),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous_sharp ), color: Colors.white, iconSize: 34.0),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(15,0,15,0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  IconButton(onPressed: (){}, icon: Icon(Icons.music_off ), color: Colors.white, iconSize: 30.0),
                  IconButton(onPressed: (){}, icon: Icon(Icons.headset ), color: Colors.white, iconSize: 30.0),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings_rounded ), color: Colors.white, iconSize: 30.0),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
