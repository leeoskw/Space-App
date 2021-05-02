import 'package:flutter/material.dart';
import 'package:space_app/views/interfacePage.dart';

class PostPage extends StatefulWidget implements InterfacePage {
  Icon _pageIcon = Icon(Icons.stroller);
  String _pageName = 'Post Page';

  @override
  State<StatefulWidget> createState() {
    return PostPageState();
  }

  @override
  // TODO: implement pageIcon
  Icon get pageIcon => _pageIcon;

  @override
  // TODO: implement pageName
  String get pageName => _pageName;
}

class PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return post();
  }

  Widget post() {
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          children: [
            banner(),
            Container(
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Icon(
                    Icons.star,
                    size: 35,
                  ),
                ),
                alignment: Alignment.topRight,
              ),
            ),
          ],
        ),
      ), // Foto post + estrela,
    );
  }

  Image generateImage() {
    return Image.network(
      "https://ohlaladani.com.br/wp-content/uploads/wallpaper-OHLALADANI_MOBILE_WALLPAPERS_CALMA-2.jpg",
      fit: BoxFit
          .cover, // fills the image as much as it can within its container.
    );
  }

  Widget banner() {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      child: generateImage(),
    );
  }
}
