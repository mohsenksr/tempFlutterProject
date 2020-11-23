import 'package:flutter/material.dart';
import 'package:second/styles/colors.dart';

class AboutUsItem extends StatelessWidget {
  final title;
  final mainText;
  AboutUsItem(this.title, this.mainText);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, color: themeColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: themeColor,
            thickness: 5,
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              mainText,
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
            ),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
