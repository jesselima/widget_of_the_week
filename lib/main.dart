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
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // ignore: slash_for_doc_comments
  /**
   * SAMPLE BOTTOM NAV MENU - TRADITIONAL
   */

//  int _selectedIndex = 0;
//  static const TextStyle optionStyle =
//      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//  static const List<Widget> _widgetOptions = <Widget>[
//    Text(
//      'Index 0: Home',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 1: Business',
//      style: optionStyle,
//    ),
//    Text(
//      'Index 2: School',
//      style: optionStyle,
//    ),
//  ];
//
//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: const Text('Tasks - Bottom App Bar')),
//      floatingActionButton: FloatingActionButton.extended(
//        elevation: 4.0,
//        icon: const Icon(Icons.add),
//        label: const Text('Add a task'),
//        onPressed: () {},
//      ),
//      floatingActionButtonLocation:
//      FloatingActionButtonLocation.centerDocked,
//      bottomNavigationBar: BottomAppBar(
//        child: new Row(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            IconButton(
//              icon: Icon(Icons.menu),
//              onPressed: () {},
//            ),
//            IconButton(
//              icon: Icon(Icons.search),
//              onPressed: () {},
//            )
//          ],
//        ),
//      ),
//    );
//  }


  // ignore: slash_for_doc_comments
  /**
   * SAMPLE WITH NOTCH
   */

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: const Text('Bottom App Bar')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
        notchMargin: 4.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            /**
             * Try ro comment and uncomment lines
             * Use "flex" argument when you want to change the balance between
             * ...the Expanded. Like LinearLayout Weight in Android xml layouts.
             */
            Expanded(
                flex: 0,
                child: IconButton(icon: Icon(Icons.menu), onPressed: () {})),
            Expanded(
                flex: 2,
                child: IconButton(icon: Icon(Icons.wifi), onPressed: () {})),

            Expanded(
                flex: 1,
                child: SizedBox(width: 20,)
            ),

            Expanded(
                flex: 2,
                child: IconButton(icon: Icon(Icons.security), onPressed: () {})),
            Expanded(
                flex: 0,
                child: IconButton(icon: Icon(Icons.search), onPressed: () {})),

          ],
        ),
      ),
    );
  }

}
