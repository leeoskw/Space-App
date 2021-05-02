import 'package:flutter/material.dart';
import 'package:space_app/theme/appColors.dart';
import 'package:space_app/theme/themeData.dart';
import 'package:space_app/views/initial_page/initialPage.dart';
import 'package:space_app/views/interfacePage.dart';
import 'package:space_app/views/post_page/postPage.dart';

class BottomNavegationBarLayout extends StatefulWidget {
  @override
  _BottomNavegationBarLayoutState createState() =>
      _BottomNavegationBarLayoutState();
}

class _BottomNavegationBarLayoutState extends State<BottomNavegationBarLayout> {
  int _currentPage = 0;
  List<InterfacePage> _pages = [
    PostPage(),
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
        elevation: 2,
        backgroundColor: AppColors.primary.shade600,
        iconTheme: IconThemeData(color: AppColors.secondary),
        title: Text('SpaceApp', style: TextStyle(color: AppColors.secondary)),
      ),
      body: _pages[_currentPage],
      bottomNavigationBar: generateBottomNavegationBar(),
      drawer: generateDrawer(context),
    );
  }

  BottomNavigationBar generateBottomNavegationBar() {
    return BottomNavigationBar(
      elevation: 1,
      selectedItemColor: AppColors.accent,
      unselectedItemColor: AppColors.secondary,
      backgroundColor: AppColors.primary.shade700,
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
        child: Center(child: Text('SpaceApp', style: TextStyle(fontSize: 32))),
        decoration: BoxDecoration(color: AppColors.accent),
      )
    ];
    _drawerItensNames.forEach((item) {
      list.add(new ListTile(
        title: Text(
          item,
          style: TextStyle(fontSize: 24),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ));
    });
    return list;
  }
}
