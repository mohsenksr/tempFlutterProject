import 'package:flutter/material.dart';
import '../../classes/fancy_left_bar.dart';
import '../../styles/colors.dart';

class LeftFancyBar extends StatelessWidget {
  final int _tabIndexState;
  final Function changeTab;

  LeftFancyBar(this._tabIndexState, this.changeTab);

  @override
  Widget build(BuildContext context) {
    return FancyLeftBar(
      type: FancyType.FancyV2,
      selectedIndex: _tabIndexState,
      items: [
        FancyItem(
          textColor: themeColor,
          title: 'Home',
          icon: Icon(Icons.home),
        ),
        FancyItem(
          textColor: themeColor,
          title: 'Messages',
          icon: Icon(Icons.message),
        ),
        FancyItem(
          textColor: themeColor,
          title: 'Search',
          icon: Icon(Icons.search),
        ),
        FancyItem(
          textColor: themeColor,
          title: 'Profile',
          icon: Icon(Icons.person),
        ),
        FancyItem(
          textColor: themeColor,
          title: 'More',
          icon: Icon(Icons.more_vert),
        ),
      ],
      onItemSelected: (index) {
        print(index);
        changeTab(index);
      },
    );
  }
}
