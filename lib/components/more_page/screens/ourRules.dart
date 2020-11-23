import 'package:flutter/material.dart';
import 'package:second/components/more_page/widgets/rulesWidget.dart';

class RulesScreen extends StatelessWidget {
  final List<String> rules;
  RulesScreen(this.rules);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: rules.length,
      itemBuilder: (ctx, index) => RulesWidget(rules[index]),
    );
  }
}
