import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/Cat/bak.png',
            image_caption: 'Fruits',
          ),
          Category(
            image_location: 'images/Cat/biscuit.jpg',
            image_caption: 'Buiscuits',
          ),
          Category(
            image_location: 'images/Cat/haldiram.png',
            image_caption: 'Namkeen',
          ),
          Category(
            image_location: 'images/Cat/milk.jpg',
            image_caption: 'Milk',
          ),
          Category(
            image_location: 'images/Cat/cake.png',
            image_caption: 'Cake',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location, width: 100, height: 90),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0, color: Colors.black), ),
            ),
          ),
        ),
      ),
    );
  }
}
