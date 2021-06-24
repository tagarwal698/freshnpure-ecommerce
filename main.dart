import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//My own imports for different componnents

import 'package:freshnpure/Components/horizontal_categories.dart';
import 'package:freshnpure/Components/Products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/1.jpg'),
          AssetImage('images/2.png'),
          AssetImage('images/3.jpg'),
          AssetImage('images/4.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        dotSize: 2.0,
        indicatorBgPadding: 8.0,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('FreshNPure'),
        actions: [
          new IconButton(
              onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
          new IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart, color: Colors.white))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Tushar'),
              accountEmail: Text('tagarwal698@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white)),
              ),
              decoration: new BoxDecoration(color: Colors.redAccent),
            ),
            //body  BUTTONS FOR THE SIDEBAR
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          //imagecarousel begins
          image_carousel,
          //padding code
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                )),
          ),
          //Horizontal list begins here
          HorizontalList(),

          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Recent Products',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                )),
          ),
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
