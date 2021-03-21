import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:prompt_dialog/prompt_dialog.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return MaterialApp(
      title: 'Flutter Remote',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      );
  } 
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isPlaying = true;
  bool _selected = false;
  String currentIP = "192.168.8.102";
  String currentPORT = "5022";
  bool _muteMusicSelected = false;

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

  _togglemute() async {
    String url = "";
    if(!_muteMusicSelected){
      url = "http://${currentIP}:${currentPORT}/mute";
    }else{
      url = "http://${currentIP}:${currentPORT}/unmute";
    }


    final response = await http.get(url);
    setState((){ _muteMusicSelected = !_muteMusicSelected;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   	resizeToAvoidBottomPadding: false,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage("assets/24866.jpg"),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,45,15,10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RaisedButton.icon(onPressed: (){ _putspleep(); }, icon: Icon(Icons.airline_seat_individual_suite_rounded, color: Colors.white,), label: Text('Sleep', style: TextStyle(color: Colors.white),), color: Colors.red.withOpacity(0.05)),
                      RaisedButton.icon(onPressed: (){ _shutdown(); }, icon: Icon(Icons.power_off, color: Colors.white, ), label: Text('Power Off', style: TextStyle(color: Colors.white),), color: Colors.red.withOpacity(0.05)),
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
                      Text('VOLUMN', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      RaisedButton.icon(onPressed: (){ _volumnDecrease(); }, icon: Icon(Icons.remove_circle, color: Colors.white,), label: Text('Down', style: TextStyle(color: Colors.white),), color: Colors.red.withOpacity(0.05)),
                      Text(' '),
                      RaisedButton.icon(onPressed: (){ _volumnIncrease(); }, icon: Icon(Icons.add_circle, color: Colors.white,), label: Text('Up', style: TextStyle(color: Colors.white),), color: Colors.red.withOpacity(0.05)),]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('BRIGHTNESS', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.remove_circle, color: Colors.white,), label: Text('Down', style: TextStyle(color: Colors.white),), color: Colors.red.withOpacity(0.05)),
                      Text(' '),
                      RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle, color: Colors.white,), label: Text('Up', style: TextStyle(color: Colors.white),), color: Colors.red.withOpacity(0.05)),]),
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
                  padding: const EdgeInsets.fromLTRB(85.0,5,85.0,0),
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
                    IconButton(onPressed: (){ _togglemute(); }, icon: Icon(Icons.music_off ), color: _muteMusicSelected ? Colors.red : Colors.white, iconSize: 30.0),
                    IconButton(onPressed: () async {
                      String ip = await prompt(context);
		      setState((){
		      	currentIP = ip;
		      });
                    }, icon: Icon(Icons.headset ), color: Colors.white, iconSize: 30.0),
                    IconButton(onPressed: () async {
                      String ip = await prompt(context, title: Text('Enter host machine IP'),);
		      setState((){
		      	currentIP = ip;
		      });
                    },  icon: Icon(Icons.settings_rounded ), color: Colors.white, iconSize: 30.0),
                    ]),
                  ),
              ],
            ),
          ),
        ),
      );

  }
}
