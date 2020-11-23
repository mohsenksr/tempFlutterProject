import 'package:flutter/material.dart';
import 'package:second/styles/colors.dart';

class CommonQuestionsWidget extends StatelessWidget {
  final String question;
  final String answer;
  CommonQuestionsWidget(this.question, this.answer);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.question_answer,
              size: mediaQuery.size.height / 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                question,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 20, color: themeColor),
              ),
            ),
            Icon(
              Icons.add_comment,
              size: mediaQuery.size.height / 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                answer,
                textAlign: TextAlign.justify,
                style: TextStyle(),
                textDirection: TextDirection.rtl,
              ),
            ),
            Divider(
              thickness: 10,
              color: themeColor,
            ),
          ],
        ),
      ),
    );
  }
}
