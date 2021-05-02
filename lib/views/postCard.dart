import 'package:flutter/material.dart';
import 'package:space_app/theme/appColors.dart';
import 'package:space_app/theme/themeData.dart';

class PostCard extends StatelessWidget {
  static const TextStyle titletStyle =
      TextStyle(color: AppColors.secondary, fontSize: 18);
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
                children: [
                  Text("Titulo", style: titletStyle),
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
                      child: Title(
                        color: AppColors.secondary,
                        child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras molestie mauris vitae est facilisis egestas. ",
                            style: textStyle),
                      ),
                      flex: 5,
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      child: buildImage(),
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

  Image buildImage() {
    return Image.network(
      "https://thehill.com/sites/default/files/ca_earth_from_space_istock.jpg",
      errorBuilder: (context, error, stackTrace) => Image.asset('assets/images/404.png'),
    );
    // return Image.asset('assets/images/404.png');
  }
}
