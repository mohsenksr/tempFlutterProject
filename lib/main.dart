import 'package:flutter/material.dart';
import './classes/fancy_bar.dart';
import './styles/colors.dart';
import 'components/main/navigationBar.dart';
import './routes/home.dart';
import './routes/messages.dart';
import './routes/search.dart';
import './routes/profile.dart';
import './routes/more.dart';
import './styles/textStyles.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(0),
      '/messages': (context) => MyApp(1),
      '/search': (context) => MyApp(2),
      '/profile': (context) => MyApp(3),
      '/more': (context) => MyApp(4),
    },
  ));
}

class MyApp extends StatefulWidget {
  int initialIndex;

  MyApp(this.initialIndex);

  State<StatefulWidget> createState() {
    return _MyAppState(initialIndex);
  }
}

class _MyAppState extends State<MyApp> {
  int _tabIndexState = 0;

  _changeTab(tabIndex) {
    setState(() {
      _tabIndexState = tabIndex;
    });
  }

  _MyAppState(this._tabIndexState);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Project',
              style: normalText,
            ),
            backgroundColor: themeColor,
          ),
          body: _tabIndexState == 0
              ? HomeRoute()
              : _tabIndexState == 1
                  ? MessagesRoute()
                  : _tabIndexState == 2
                      ? SearchRoute()
                      : _tabIndexState == 3
                          ? ProfileRoute()
                          : MoreRoute(),
          bottomNavigationBar: FancyBar(_tabIndexState, _changeTab)),
    );
  }
}
