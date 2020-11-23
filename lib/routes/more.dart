import 'package:flutter/material.dart';
import 'package:second/components/more_page/models/aboutUsTexts.dart';
import 'package:second/components/more_page/models/commonQuestionsText.dart';
import 'package:second/components/more_page/models/contactUsText.dart';
import 'package:second/components/more_page/models/rulesText.dart';
import 'package:second/components/more_page/screens/aboutUs.dart';
import 'package:second/components/more_page/screens/commonQuestions.dart';
import 'package:second/components/more_page/screens/contactUs.dart';
import 'package:second/components/more_page/screens/ourRules.dart';
import './../styles/colors.dart';
import './../styles/textStyles.dart';

class MoreRoute extends StatefulWidget {
  Function setOptionIndex;
  int index;
  MoreRoute(this.setOptionIndex, this.index);

  @override
  _MoreRouteState createState() {
    return _MoreRouteState(setOptionIndex);
  }
}

class _MoreRouteState extends State<MoreRoute> {
  Function setOptionIndex;
  int _moreOptionIndex = 0;
  var aboutUsText = AboutUsTexts().items;
  var rulesText = RulesText().rules;
  var commonQuestionsText = CommonQuestionsText().questions;
  var contactUsText = ContactUsText().items;
  _MoreRouteState(this.setOptionIndex);

  @override
  Widget build(BuildContext context) {
    _moreOptionIndex = widget.index;
    print("index in route is $_moreOptionIndex");
    return IndexedStack(
      children: [
        MainMorePage(setOptionIndex),
        AboutUsScreen(aboutUsText),
        ContactUs(contactUsText),
        CommonQuestions(commonQuestionsText),
        RulesScreen(rulesText),
      ],
      index: _moreOptionIndex,
    );
  }
}

class MainMorePage extends StatelessWidget {
  Function _setPageIndex;
  MainMorePage(this._setPageIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MoreWidgets('about us', Icons.add_box, 1, _setPageIndex),
        MoreWidgets('contact us', Icons.email, 2, _setPageIndex),
        MoreWidgets('quetsions', Icons.question_answer, 3, _setPageIndex),
        MoreWidgets('rules', Icons.rule, 4, _setPageIndex),
      ],
    );
  }
}

class MoreWidgets extends StatelessWidget {
  final String _text;
  final _icon;
  final _index;
  Function _setPageIndex;
  MoreWidgets(this._text, this._icon, this._index, this._setPageIndex);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: themeColor,
      ),
      height: 80,
      margin: EdgeInsets.symmetric(
          horizontal: deviceSize.width / 10, vertical: deviceSize.width / 20),
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlatButton(
              onPressed: () {
                _setPageIndex(_index);
              },
              child: Text(
                _text,
                style: TextStyle(
                  fontSize: 21,
                  color: themeColor,
                ),
              ),
            ),
            Icon(
              _icon,
              size: deviceSize.width / 10,
            ),
          ],
        ),
      ),
    );
  }
}
