import 'package:flutter/material.dart';
import 'package:space_app/theme/appColors.dart';
import 'package:space_app/theme/themeData.dart';

class PostCard extends StatelessWidget {
  static const TextStyle titletStyle =
      TextStyle(color: AppColors.secondary, fontSize: 18);
  static const TextStyle textStyle = TextStyle(color: AppColors.secondary);
  static const cardPadding = const EdgeInsets.all(16.0);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.theme.cardColor,
      elevation: 2,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Padding(
          padding: cardPadding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(children: _buildTitle()),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildContent(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTitle() {
    return [
      Text("Titulo", style: titletStyle),
      Spacer(),
      IconButton(
        icon: Icon(Icons.star),
        onPressed: () {},
      ),
    ];
  }

  List<Widget> _buildContent() {
    return [
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
        child: _buildImage(),
        flex: 3,
      )
    ];
  }

  Image _buildImage() {
    return Image.network(
      "https://thehill.com/sites/default/files/ca_earth_from_space_istock.jpg",
      errorBuilder: (context, error, stackTrace) =>
          Image.asset('assets/images/404.png'),
    );
    // return Image.asset('assets/images/404.png');
  }
}
