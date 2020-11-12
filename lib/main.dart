import 'package:flutter/material.dart';
import 'package:fancy_bar/fancy_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _tabIndexState = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Project'),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [
            Text('Tab number ' + (_tabIndexState + 1).toString() + ' selected'),
          ],
        ),
        bottomNavigationBar: FancyBottomBar(
          type: FancyType.FancyV2, // Fancy Bar Type
          items: [
            FancyItem(
              textColor: Colors.teal,
              title: 'Home',
              icon: Icon(Icons.home),
            ),
            FancyItem(
              textColor: Colors.teal,
              title: 'Messages',
              icon: Icon(Icons.message),
            ),
            FancyItem(
              textColor: Colors.teal,
              title: 'Search',
              icon: Icon(Icons.search),
            ),
            FancyItem(
              textColor: Colors.teal,
              title: 'Profile',
              icon: Icon(Icons.person),
            ),
            // FancyItem(
            //   textColor: Colors.teal,
            //   title: 'More',
            //   icon: Icon(Icons.more_vert),
            // ),
          ],
          onItemSelected: (index) {
            print(index);
            setState(() {
              _tabIndexState = index;
            });
          },
        ),
      ),
    );
  }
}
