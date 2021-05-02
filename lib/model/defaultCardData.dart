import 'package:flutter/material.dart';

abstract class DefaultCardData {
  final String title;
  final String content;
  final String imageUrl;
  bool isFavorited;

  DefaultCardData(this.title, this.content , this.imageUrl, {this.isFavorited = false});

  Image buildImage() {
    return Image.network(
      imageUrl,
      errorBuilder: (context, error, stackTrace) =>
          Image.asset('assets/images/404.png'),
    );
  }
}
