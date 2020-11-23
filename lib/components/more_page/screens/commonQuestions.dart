import 'package:flutter/material.dart';
import 'package:second/components/more_page/widgets/commonQuestionsWidget.dart';


class CommonQuestions extends StatelessWidget {
  Map<String, String> _questions;
  CommonQuestions(this._questions);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _questions.keys
          .map((question) =>
              CommonQuestionsWidget(question, _questions[question]))
          .toList(),
    );
  }
}
