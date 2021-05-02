import 'package:flutter/material.dart';
import 'package:space_app/model/postData.dart';
import 'package:space_app/theme/themeData.dart';

class PostCard extends StatelessWidget {
  static const cardPadding = const EdgeInsets.all(16.0);
  PostData data;

  PostCard({String title = 'Title', String content = 'Content', String imageUrl = ''}) {
    data = new PostData(title, content, imageUrl);
  }

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
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildContent(),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTitle() {
    return [
      Text(data.title, style: AppTheme.cardStyle['titleStyle']),
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
        child: Text(data.content, style: AppTheme.cardStyle['textStyle']),
        flex: 5,
      ),
      Spacer(flex: 1),
      Expanded(
        child: _buildImage(),
        flex: 3,
      )
    ];
  }

  Image _buildImage() {
    return Image.network(
      data.imageUrl,
      errorBuilder: (context, error, stackTrace) =>
          Image.asset('assets/images/404.png'),
    );
  }
}
