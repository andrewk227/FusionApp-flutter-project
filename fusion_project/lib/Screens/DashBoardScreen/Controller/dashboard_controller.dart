import 'package:flutter/material.dart';
import 'package:fusion_project/app_imports.dart';

class DashboardController {
  int _selectedIndex = 2;
  bool _editable = false;

  List<Widget> sections = [
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        numberCard(),
        numberCard(),
        numberCard(),
      ]),
    ),
    const SizedBox(
      height: 20,
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        licenceCard(),
        licenceCard(),
        licenceCard(),
      ]),
    ),
    const SizedBox(
      height: 20,
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: []),
    ),
    const SizedBox(
      height: 20,
    ),
    SingleChildScrollView(
        scrollDirection: Axis.horizontal, child: Row(children: [])),
  ];

  int getSelectedIndex() {
    return _selectedIndex;
  }

  void setSelectedIndex(int newIndex) {
    _selectedIndex = newIndex;
  }

  void toogleEditStatus() {
    _editable = !_editable;
  }

  bool getEditStatus() {
    return _editable;
  }
}
