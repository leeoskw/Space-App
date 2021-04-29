import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyan,
      child: ConstrainedBox(
        // constraints: BoxConstraints(minHeight: 328, minWidth: 214),
        constraints: BoxConstraints(
          minHeight: 214,
          minWidth: double.infinity,
        ),

        child: FittedBox(
          child: Column(
            children: [
              Row(
                children: [Text("Titulo"), Icon(Icons.star)],
              ),
              Row(
                children: [
                  Text("Matéria"),
                  Image.network(
                      "https://images-ext-2.discordapp.net/external/aXQbVp1pt8fPxrxDgFhrexLjS5XHfW7jrNoXQIv4s0U/%3Fu%3Dhttps%253A%252F%252Fyt3.ggpht.com%252Fa%252FAGF-l7-pLWHhqjLR5ZVoKzV9_eU6IjYrDyhvSLRjsw%253Ds900-mo-c-c0xffffffff-rj-k-no%26f%3D1%26nofb%3D1/https/external-content.duckduckgo.com/iu/?width=466&height=466")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
