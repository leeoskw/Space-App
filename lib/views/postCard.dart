import 'package:flutter/material.dart';
import 'package:space_app/model/postData.dart';
import 'package:space_app/theme/themeData.dart';

class PostCard extends StatefulWidget {
  static const cardPadding = const EdgeInsets.all(16.0);
  PostData data;

  PostCard(
      {String title = 'Title',
      String content = 'Content',
      String imageUrl = ''}) {
    data = PostData(title, content, imageUrl);
  }

  @override
  _PostCardState createState() => _PostCardState(data);
}

class _PostCardState extends State<PostCard> {
  final PostData data;
  _PostCardState(this.data);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppTheme.theme.cardColor,
      elevation: 2,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Padding(
          padding: PostCard.cardPadding,
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
      Text(widget.data.title, style: AppTheme.cardStyle['titleStyle']),
      Spacer(),
      _buildStarButton(),
    ];
  }

  IconButton _buildStarButton() {
    Icon starIcon = data.isFavorited
        ? Icon(Icons.star, color: AppTheme.cardStyle['starColor'])
        : Icon(Icons.star_border);
    return IconButton(
      icon: starIcon,
      onPressed: () {
        setState(() {
          data.isFavorited = !data.isFavorited;
        });
      },
    );
  }

  List<Widget> _buildContent() {
    return [
      Expanded(
        child:
            Text(widget.data.content, style: AppTheme.cardStyle['textStyle']),
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
      widget.data.imageUrl,
      errorBuilder: (context, error, stackTrace) =>
          Image.asset('assets/images/404.png'),
    );
  }
}
