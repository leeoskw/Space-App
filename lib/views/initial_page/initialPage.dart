import 'package:flutter/material.dart';
import 'package:space_app/views/interfacePage.dart';

class InitialPage extends StatefulWidget implements InterfacePage {
  
  Icon _pageIcon = Icon(Icons.add_box);
  String _pageName = 'Initial';

  @override
  _InitialPageState createState() => _InitialPageState();

  @override
  Icon get pageIcon => _pageIcon;

  @override
  String get pageName => _pageName;
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('SpaceApp')),
    );
  }
}
