import 'package:flutter/material.dart';
import 'package:second/components/more_page/widgets/aboutUsItem.dart';


class AboutUsScreen extends StatelessWidget {
  final Map<String, String> _aboutUsText;
  AboutUsScreen(this._aboutUsText);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
        height: mediaQuery.size.height - mediaQuery.padding.bottom,
         //height: 200,
      //color: Theme.of(context).primaryColor,
      child: ListView(
          children: _aboutUsText.keys
              .map((title) => AboutUsItem(title, _aboutUsText[title]))
              .toList()),
    );
  }
}
