import 'package:flutter/material.dart';

const double _kViewportFraction = 0.7;

class ImageGalleryScreen extends StatefulWidget {
  ImageGalleryScreen({Key key}) : super(key: key);

  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGalleryScreen> {
  final PageController _backgroundPageController = PageController();
  final PageController _pageController =
      PageController(viewportFraction: _kViewportFraction);
  ValueNotifier<double> selectedIndex = ValueNotifier<double>(0.0);

  bool _handlePageNotification(ScrollNotification notification,
      PageController leader, PageController follower) {
    if (notification.depth == 0 && notification is ScrollUpdateNotification) {
      selectedIndex.value = leader.page;
      if (follower.page != leader.page) {
        follower.position.jumpToWithoutSettling(leader.position.pixels /
            _kViewportFraction); // ignore: deprecated_member_use
      }
      setState(() {});
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Photos"),
      ),
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _backgroundPageController,
            children: _buildBackgroundPages(),
          ),
          NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              return _handlePageNotification(
                  notification, _pageController, _backgroundPageController);
            },
            child: PageView(
              controller: _pageController,
              children: _buildPages(),
            ),
          ),
        ],
      ),
    );
  }

  Iterable<Widget> _buildBackgroundPages() {
    final List<Widget> backgroundPages = <Widget>[];
    for (int index = 0; index < 38; index++) {
      backgroundPages.add(Container(
        color: Color(0xB07986CB),
        child: Opacity(
          opacity: 0.3,
          child: Image.asset(
            'assets/images/img${index + 1}.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ));
    }
    return backgroundPages;

  }

  Iterable<Widget> _buildPages() {
    final List<Widget> pages = <Widget>[];
    double pictureHeight = MediaQuery.of(context).size.height * 0.6;
    double pictureWidth = MediaQuery.of(context).size.width * 0.6;
    for (int index = 0; index < 38; index++) {
      var alignment = Alignment.center.add(
          Alignment((selectedIndex.value - index) * _kViewportFraction, 0.0));
      var resizeFactor =
          (1 - (((selectedIndex.value - index).abs() * 0.3).clamp(0.0, 1.0)));
      var imageAsset = 'assets/images/img${index + 1}.jpg';
      var image = Image.asset(imageAsset, fit: BoxFit.cover);
      pages.add(Container(
        alignment: alignment,
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.red[400],
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0xEE000000),
                offset: Offset(0.0, 6.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          width: pictureWidth * resizeFactor,
          height: pictureHeight * resizeFactor,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Hero(
                  tag: imageAsset,
                  child: image,
                );
              }));
            },
            child: Hero(
              tag: imageAsset,
              child: image,
            ),
          ),
        ),
      ));
    }
    return pages;
  }
}

/*
class ImageGallery extends StatelessWidget{
  final PageController ctrl=PageController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:PageView(
        controller: ctrl,
        children: <Widget>[
          Container(color: Colors.green,),
          Container(color: Colors.blue)
        ],
      )
    );
  }

}*/
