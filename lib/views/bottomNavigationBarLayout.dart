import 'package:flutter/material.dart';
import 'package:space_app/views/initial_page/initialPage.dart';
import 'package:space_app/views/interfacePage.dart';

class BottomNavegationBarLayout extends StatefulWidget {
  @override
  _BottomNavegationBarLayoutState createState() =>
      _BottomNavegationBarLayoutState();
}

class _BottomNavegationBarLayoutState extends State<BottomNavegationBarLayout> {
  int _currentPage = 0;
  List<InterfacePage> _pages = [
    InitialPage(),
    InitialPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpaceApp'),
      ),
      body: _pages[_currentPage],
      bottomNavigationBar: generateBottomNavegationBar(),
    );
  }

  BottomNavigationBar generateBottomNavegationBar() {
    return BottomNavigationBar(
      items: generateListItens(),
      currentIndex: _currentPage,
      onTap: (value) {
        setState(() {
          _currentPage = value;
        });
      },
    );
  }

  List<BottomNavigationBarItem> generateListItens() {
    List<BottomNavigationBarItem> itens = [];
    _pages.forEach((page) {
      itens.add(new BottomNavigationBarItem(
        icon: page.pageIcon,
        label: page.pageName,
      ));
    });
    return itens;
  }
}
