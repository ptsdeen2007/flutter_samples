import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
   return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo Home Page'),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor
    ));
    var accentColor2 = Theme.of(context).accentColor;
    return Scaffold(
      /*appBar: AppBar(
        title: Text("My title"),
      ),*/
        body: ListView(
      children: <Widget>[
        Container(
          color: accentColor2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.menu, color: Colors.white),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Column(
                        children: <Widget>[
                          Align(
                            child: Text(
                              "Your location",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
                            child: Text(
                              "vk padi tippu nagar",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(color: Colors.white),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  height: 1,
                  width: 8,
                ),
                Icon(Icons.pin_drop, color: Colors.white),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.blueAccent  ,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("replace with searchable "),
          )
        ),

        SizedBox(height: 5500,)
      ],
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  void doSumthing() {
    print("hello");
  }
}
