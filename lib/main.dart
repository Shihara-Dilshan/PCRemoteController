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
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Image.asset('assets/linux_PNG29.png', fit: BoxFit.fill, height: 50,),
            Text('Controller'),
          ],),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.airline_seat_individual_suite_rounded), label: Text('Sleep')),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.power_off ), label: Text('Power Off'), color: _selected ? Colors.red : Colors.white,),
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
                      Text('VOLUMN', style: TextStyle(color: Colors.white),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.remove_circle), label: Text('Down')),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle), label: Text('Up')),]),
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
                      Text('BRIGHTNESS', style: TextStyle(color: Colors.white),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.remove_circle), label: Text('Down')),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle), label: Text('Up')),]),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(15,0,15,0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.skip_next), label: Text('')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(45.0,5,45.0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.fast_rewind ), label: Text('')),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.pause ), label: Text('')),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.fast_forward ), label: Text('')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.skip_previous_sharp), label: Text('')),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(15,0,15,0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
