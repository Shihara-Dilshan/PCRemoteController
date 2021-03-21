import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isPlaying = true;
  bool _selected = false;
  String currentIP = "192.168.43.94";
  String currentPORT = "5022";
  
  _handlePlay() async {
    String url = "";
    if(!_isPlaying){
      url = "http://${currentIP}:${currentPORT}/play"; 
    }else{
      url = "http://${currentIP}:${currentPORT}/pause"; 
    }
    
    final response = await http.get(url); 
    setState((){
      _isPlaying = !_isPlaying;
    });
  
    //var responseData = json.decode(response.body); 
    
  }
  
  _volumnIncrease() async {
    String url = "http://${currentIP}:${currentPORT}/increasevolumn"; 

    final response = await http.get(url); 
  }
  
  _volumnDecrease() async {
    String url = "http://${currentIP}:${currentPORT}/decreasevolumn"; 

    final response = await http.get(url); 
  }
  
  _putspleep() async {
    String url = "http://${currentIP}:${currentPORT}/sleep"; 

    final response = await http.get(url); 
  }
  
   _shutdown() async {
    String url = "http://${currentIP}:${currentPORT}/pweroff"; 

    final response = await http.get(url); 
  }
  
  _nextMedia() async {
    String url = "http://${currentIP}:${currentPORT}/playnext"; 

    final response = await http.get(url); 
  }
  
  _previousMedia() async {
    String url = "http://${currentIP}:${currentPORT}/playprevious"; 

    final response = await http.get(url); 
  }
  
   _fastfoward() async {
    String url = "http://${currentIP}:${currentPORT}/fastfaward"; 

    final response = await http.get(url); 
  }
  
  _fastbackward() async {
    String url = "http://${currentIP}:${currentPORT}/fastbackward"; 

    final response = await http.get(url); 
  }
  
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
                      RaisedButton.icon(onPressed: (){ _putspleep(); }, icon: Icon(Icons.airline_seat_individual_suite_rounded), label: Text('Sleep')),
                      RaisedButton.icon(onPressed: (){ _shutdown(); }, icon: Icon(Icons.power_off ), label: Text('Power Off'), color: _selected ? Colors.red : Colors.white,),
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
                      RaisedButton.icon(onPressed: (){ _volumnDecrease(); }, icon: Icon(Icons.remove_circle, color: Colors.red,), label: Text('Down')),
                      Text(' '),
                      RaisedButton.icon(onPressed: (){ _volumnIncrease(); }, icon: Icon(Icons.add_circle, color: Colors.green,), label: Text('Up')),]),
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
                      IconButton(onPressed: (){_nextMedia();}, icon: Icon(Icons.skip_next ), color: Colors.white, iconSize: 34.0),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(75.0,5,75.0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(onPressed: (){ _fastbackward(); }, icon: Icon(Icons.fast_rewind ), color: Colors.white, iconSize: 34.0),
                      IconButton(onPressed: (){ _handlePlay(); }, icon: !_isPlaying ? Icon(Icons.chevron_right ) : Icon(Icons.pause ), color: Colors.white, iconSize: 34.0),
                      IconButton(onPressed: (){ _fastfoward(); }, icon: Icon(Icons.fast_forward ), color: Colors.white, iconSize: 34.0),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(onPressed: (){ _previousMedia(); }, icon: Icon(Icons.skip_previous_sharp ), color: Colors.white, iconSize: 34.0),
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
