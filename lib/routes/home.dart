import 'package:flutter/material.dart';
import './../styles/colors.dart';
import './../styles/textStyles.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  int _state = 0;

  changeState() {
    setState(() {
      if (_state == 0) {
        _state = 1;
      } else {
        _state = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'home state: ' + _state.toString(),
            style: normalText,
          ),
          RaisedButton(
            child: Text(
              'change state',
              style: normalText,
            ),
            onPressed: () => changeState(),
            color: themeColor,
          ),
        ],
      ),
    );
  }
}
