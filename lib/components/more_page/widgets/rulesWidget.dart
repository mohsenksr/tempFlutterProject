import 'package:flutter/material.dart';
import 'package:second/styles/colors.dart';

class RulesWidget extends StatelessWidget {
  final String text;
  RulesWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: themeColor),
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.all(5),
        child: Card(
          child: Column(
            children: [
              Icon(
                Icons.rule,
                color: themeColor,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  text,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                ),
              ),
              // Divider(
              //   thickness: 3,
              //   color: themeColor,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
