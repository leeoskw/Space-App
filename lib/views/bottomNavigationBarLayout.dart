import 'package:flutter/material.dart';
import 'package:space_app/views/appColors.dart';
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
  List<String> _drawerItensNames = [
    'astronautas',
    'agências',
    'eventos',
    'ISS',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SpaceApp'),
      ),
      body: _pages[_currentPage],
      bottomNavigationBar: generateBottomNavegationBar(),
      drawer: generateDrawer(context),
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

  Drawer generateDrawer(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: Container(
        color: AppColors.secondary.shade600,
        child: ListView(
          padding: EdgeInsets.zero,
          children: _generateDrawerItemList(context),
        ),
      ),
    );
  }

  List<Widget> _generateDrawerItemList(BuildContext context) {
    List<Widget> list = [
      DrawerHeader(
        child: Center(child: Text('SpaceApp')),
        decoration: BoxDecoration(color: AppColors.accent),
      )
    ];
    _drawerItensNames.forEach((item) {
      list.add(new ListTile(
        title: Text(item),
        onTap: () {
          Navigator.pop(context);
        },
      ));
    });
    return list;
  }
}
