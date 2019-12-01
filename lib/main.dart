import 'package:flutter/material.dart';

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
    /**
     * It's a good practice to use SafeArea at the Scaffold to cover the whole screen
      */
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SafeArea"),
        ),
        body: Center(
            child: ListView(
              children: List.generate(100, (index) => Text("${index+1} Some Text Here")),
            ),
          ),
      ),
    );
  }
}
