import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SafeArea'),
    );
  }
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
    return Scaffold(
      appBar: AppBar(
        title: Text("SafeArea"),
      ),
      body: Center(
        child: Stack(
          children: [
            MyCard(text: "Hello!", color: Colors.blueAccent),
            Container(
              padding: EdgeInsets.all(70),
              child: Opacity(
                  opacity: 0.8,
                  child: MyCard(
                      text: "Hi People!",
                      color: Colors.amberAccent
                  )
              ),
            ),
        ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {

  final String text;
  final Color color;
  MyCard({this.text = "Hello World :D", this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4,
        color: color,
        borderOnForeground: true,
        child: Padding(padding: EdgeInsets.all(50), child: Text(text, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
