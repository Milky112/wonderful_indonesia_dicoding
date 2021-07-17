import 'package:flutter/material.dart';

import 'package:wonderful_indonesia/screens/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavItem {
  final int id;
  final Icon icon;
  Widget destionation = HomeScreen();
  NavItem({required this.id, required this.icon, required this.destionation});
}

class NavItems extends ChangeNotifier {
  int selectedIndex = 0;

  void changeNavIndex({required int index}) {
    selectedIndex = index;
    notifyListeners();
  }

  List<NavItem> item = [
    NavItem(
      id: 1,
      icon: Icon(FontAwesomeIcons.paperPlane),
      destionation: HomeScreen(),
    ),
    NavItem(
      id: 2,
      icon: Icon(FontAwesomeIcons.bed),
      destionation: HomeScreen(),
    ),
    NavItem(
      id: 3,
      icon: Icon(FontAwesomeIcons.utensils),
      destionation: HomeScreen(),
    ),
  ];
}
