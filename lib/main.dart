import 'package:flutter/material.dart';
import 'package:puzz/secondpage.dart';

void main() => runApp(new MyApp());





class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(title: 'Flutter Demo love Page'),
      routes: <String,WidgetBuilder>{
        "/secondPage":(BuildContext context)=>new Secondpage( _MyHomePageState.playType)
      },
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 static String playType;
  int _counter = 0;

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
        body: new Container(decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/images/back.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  new RaisedButton(

                      padding: const EdgeInsets.all(12.0),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: _incrementCounter,
                      child: new Text("pic",style: new TextStyle(fontFamily: 'Game', fontSize:40.0),),
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(300.0))


                  ),
                  new RaisedButton(
                    //onPressed: subtractNumbers,
                      textColor: Colors.white,
                      color: Colors.green,
                      padding: const EdgeInsets.all(10.0),
                      child: new Text(
                        "Sound",
                        style: new TextStyle(fontFamily: 'Game', fontSize:40.0),

                      ),
                      onPressed: _decrementCounter,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(300.0))

                  ),
                ]
            ),new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  new RaisedButton(

                      padding: const EdgeInsets.all(10.0),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: (){
                        playType="lettere";
                        Navigator.of(context).pushNamed('/secondPage');},
                      child: new Text("lettere",style: new TextStyle(fontFamily: 'Game', fontSize:40.0),),
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(300.0))


                  ),])
                  ,new Column(
                  children:<Widget>[new RaisedButton(
                    //onPressed: subtractNumbers,
                      textColor: Colors.white,
                      color: Colors.red,
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(
                        "Game Mode",style: new TextStyle(fontFamily: 'Game', fontSize:40.0),

                      ),
                      onPressed: _decrementCounter,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(300.0))

                  ),]
                  ),
        ])
          ))

    ;}}
    