import 'package:flutter/material.dart';
import 'package:space_app/views/interfacePage.dart';
import 'package:space_app/views/postCard.dart';

class InitialPage extends StatefulWidget implements InterfacePage {
  final Icon _pageIcon = Icon(Icons.add_box);
  final String _pageName = 'Initial';

  @override
  _InitialPageState createState() => _InitialPageState();

  @override
  Icon get pageIcon => _pageIcon;

  @override
  String get pageName => _pageName;
}

class _InitialPageState extends State<InitialPage> {
  static const padding = 16.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(padding, 0, padding, 0),
        child: ListView.builder(
          itemBuilder: (context, index) => new PostCard(),
        ),
      ),
    );
  }
}
