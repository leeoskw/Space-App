import 'package:flutter/material.dart';
import 'package:space_app/theme/appColors.dart';
import 'package:space_app/theme/themeData.dart';

class PostCard extends StatelessWidget {
  static const TextStyle titletStyle = TextStyle(color: AppColors.secondary, fontSize: 18);
  static const TextStyle textStyle = TextStyle(color: AppColors.secondary);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.theme.cardColor,
      elevation: 2,
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
                children: [Text("Titulo", style: titletStyle), Spacer(), Icon(Icons.star)],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Title(
                        color: AppColors.secondary,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie mauris vitae est facilisis egestas. ", style: textStyle
                        ),
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
