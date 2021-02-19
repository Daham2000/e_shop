import 'package:e_shop/util/assets.dart';
import 'package:fcode_common/fcode_common.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static final log = Log("HomeView");
  static final loadingWidget = Center(
    child: CircularProgressIndicator(),
  );

  Widget imageCarousel = new Container(
    height: 250,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage(Assets.PRODUCT_IMG0),
        AssetImage(Assets.PRODUCT_IMG2),
        AssetImage(Assets.PRODUCT_IMG3),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(microseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 8.0,
    ),
  );

  @override
  Widget build(BuildContext context) {
    log.d("Loading Home View");
    CustomSnackBar customSnackBar;
    return Scaffold(
      appBar: new AppBar(
        title: Text("E-shop"),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search), onPressed: () {}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text(
                "John Cick",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "daham@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.white70,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[imageCarousel],
      ),
    );
  }
}
