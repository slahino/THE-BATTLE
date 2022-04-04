import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TheBattleBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function onIndexChange;

  TheBattleBottomNavigationBar(
    {Key key, this.selectedIndex, this.onIndexChange}) : super (key: key);

  void _onItemTapped(int index) {
    this.onIndexChange(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Characters'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'My team')
      ],
      selectedItemColor: Colors.red[700],
      onTap: _onItemTapped,
      currentIndex: this.selectedIndex
    );
  }
}
