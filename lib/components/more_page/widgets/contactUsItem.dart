import 'package:flutter/material.dart';
import 'package:second/styles/colors.dart';

class ContactUsItem extends StatelessWidget {
  final String title;
  final String text;
  ContactUsItem(this.title, this.text);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Theme.of(context).accentColor,
          height: 60,
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          margin: EdgeInsets.only(top: 10, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.arrow_left),
                    Text(text),
                  ],
                ),
              ),
              Container(
                // width: double.infinity,
                //color: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(title),
                    ),
                    Icon(Icons.contact_page)
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          indent: 20,
          endIndent: 20,
          thickness: 3,
          color: themeColor,
        )
      ],
    );
  }
}
