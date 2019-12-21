import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:widget_of_the_week/movie_db_api.dart';
import 'package:widget_of_the_week/my_card.dart';
import 'package:http/http.dart' as http;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder(
              future: http.get(MovieDbApi.getMovieDetails()),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {

                  if(snapshot.hasError) {
                    return MyCard(cardText: "Error", cardColor: Colors.red);
                  } else {
                    var response = jsonEncode(snapshot.data.toString());
                    return MyCard(cardText: response, cardColor: Colors.blueGrey,);
                  }
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
