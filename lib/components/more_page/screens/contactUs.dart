import 'package:flutter/material.dart';
import 'package:second/components/more_page/widgets/contactUsItem.dart';

class ContactUs extends StatelessWidget {
  final Map<String, String> _contactItems;
  ContactUs(this._contactItems);
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: _contactItems.keys
            .map((title) => ContactUsItem(title, _contactItems[title]))
            .toList());
  }
}
