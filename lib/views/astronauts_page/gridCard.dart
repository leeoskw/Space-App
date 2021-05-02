import 'package:flutter/material.dart';
import 'package:space_app/model/astronautData.dart';

class GridCard extends StatefulWidget {
  static const cardPadding = const EdgeInsets.all(8.0);
  AstronautData data;

  @override
  _GridCardState createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: double.infinity, minWidth: double.infinity),
          child: Padding(
            padding: GridCard.cardPadding,
            child: Stack(
              children: [_buildAstronautImage()],
            ),
          ),
        ));
  }

  Image _buildAstronautImage() {
    return Image.network(
      widget.data.imageUrl,
      errorBuilder: (context, error, stackTrace) =>
          Image.asset('assets/images/404.png'),
    );
  }
}
