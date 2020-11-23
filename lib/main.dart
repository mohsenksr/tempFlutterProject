import 'package:flutter/material.dart';
import './styles/colors.dart';
import 'components/main/navigationBar.dart';
import 'components/main/leftNavigationBar.dart';
import './routes/home.dart';
import './routes/messages.dart';
import './routes/search.dart';
import './routes/profile.dart';
import './routes/more.dart';
import './styles/textStyles.dart';

void main() {
  print('main called');
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

  MyApp(this.initialIndex) {
    print('MyApp called');
  }

  State<StatefulWidget> createState() {
    return _MyAppState(initialIndex);
  }
}

class _MyAppState extends State<MyApp> {
  int _tabIndexState = 0;
  int _moreOptionIndex = 0;

  _changeTab(tabIndex) {
    setState(() {
      _tabIndexState = tabIndex;
    });
  }

  void setOptionIndex(index) {
    setState(() {
      _moreOptionIndex = index;
    });
    print("index is $_moreOptionIndex");
  }

  _MyAppState(this._tabIndexState) {
    print('MyAppState called');
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Project',
              style: normalText,
            ),
            backgroundColor: themeColor,
            actions: [
              if (_tabIndexState == 4)
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          setOptionIndex(0);
                        }),
                  ],
                  //FloatingActionButtonLocation(FloatingActionButtonLocation.startFloat)
                )
            ],
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _width > 600
                  ? LeftFancyBar(_tabIndexState, _changeTab)
                  : SizedBox.shrink(),
              Expanded(
                child: IndexedStack(
                  children: [
                    HomeRoute(),
                    MessagesRoute(),
                    SearchRoute(),
                    ProfileRoute(),
                    MoreRoute(setOptionIndex, _moreOptionIndex),
                  ],
                  index: _tabIndexState,
                ),
              ),
            ],
          ),
          bottomNavigationBar: _width < 600
              ? FancyBar(_tabIndexState, _changeTab)
              : SizedBox.shrink()),
    );
  }
}
