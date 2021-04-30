import 'package:flutter/material.dart';
import 'package:space_app/theme/appColors.dart';
import 'package:space_app/theme/themeData.dart';
import 'package:space_app/views/interfacePage.dart';
import 'package:space_app/views/postCard.dart';

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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(16.0)),
          PostCard("Nasa",
              "E agora Jose? Eu nao sei o resto do poema pq eu sou um otario"),
          PostCard("SpaceX",
              "SpaceX chega até Jupiter e confirma: o planeta é realmente grande!"),
          // PostCard(),
          // PostCard()
        ],
      ),
    );
  }
}
