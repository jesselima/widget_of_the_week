import 'package:flutter/material.dart';
import 'package:widget_of_the_week/my_card.dart';

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
      body: Table(
        border: TableBorder.all(color: Colors.red),
//        columnWidths: {1: FractionColumnWidth(.4)},
        children: [
          TableRow(
            children: [
              TableCell(
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Rank", style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                        FontWeight.bold,
                        backgroundColor: Colors.blueGrey[100])
                    ),
                ),
              ),
              TableCell(
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Mark", style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                        FontWeight.bold,
                        backgroundColor: Colors.blueGrey[100])
                    ),
                ),
              ),
              TableCell(child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                  Text("Name", style: TextStyle(
                      fontSize: 18,
                      fontWeight:
                      FontWeight.bold,
                      backgroundColor: Colors.blueGrey[100])
                  ),
              ),
              ),
            ]
          ),
          TableRow(
              children: [
                TableCell(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("1",),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("2,32",),
                )),
                TableCell(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Jesse Lima",),
                )),
              ]
          )
        ],
      )
    );
  }
}
