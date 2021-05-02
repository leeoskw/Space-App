class PostData {
  final String title;
  final String content;
  final String imageUrl;
  bool isFavorited;

  PostData(this.title, this.content , this.imageUrl, {this.isFavorited = false});
}
