import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  String _title = "";
  String _content = "";
  //foto

  PostCard(String title, String content) {
    this._title = title;
    this._content = content;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: double.infinity,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    _title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Spacer(),
                  Icon(Icons.star)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        _content,
                        style: TextStyle(fontSize: 17),
                      ),
                      flex: 5,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      child: Image.network(
                          "https://images-ext-2.discordapp.net/external/aXQbVp1pt8fPxrxDgFhrexLjS5XHfW7jrNoXQIv4s0U/%3Fu%3Dhttps%253A%252F%252Fyt3.ggpht.com%252Fa%252FAGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw%253Ds900-mo-c-c0xffffffff-rj-k-no%26f%3D1%26nofb%3D1/https/external-content.duckduckgo.com/iu/?width=466&height=466"),
                      flex: 3,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
