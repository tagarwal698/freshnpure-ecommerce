import 'package:flutter/material.dart';
import 'package:freshnpure/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Cake",
      "picture": "images/Cat/cake.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Bakery",
      "picture": "images/Cat/bak.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Haldiram",
      "picture": "images/Cat/haldiram.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Haldiram",
      "picture": "images/Cat/haldiram.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Haldiram",
      "picture": "images/Cat/haldiram.png",
      "old_price": 120,
      "price": 85,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return Single_Prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_oldprice: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Single_Prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_oldprice;
  final product_price;

  Single_Prod({
    this.product_name,
    this.product_picture,
    this.product_oldprice,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //passing the value of the product to the product details page
                builder: (context) => new ProductDetails(
                  product_detail_name: product_name,
                  product_detail_oldprice: product_oldprice,
                  product_detail_price: product_price,
                  product_detail_picture: product_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                // child: ListTile(
                //   leading: Text(product_name,
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold, fontSize: 18.0)),
                //   title: Text("\Rs.$product_price",
                //       style: TextStyle(
                //           color: Colors.red, fontWeight: FontWeight.w800)),
                //   subtitle: Text("\Rs.$product_oldprice",
                //       style: TextStyle(
                //           color: Colors.black54,
                //           fontWeight: FontWeight.w800,
                //           decoration: TextDecoration.lineThrough)),
                // ),
                child : new Row(children: <Widget>[
                  Expanded(
                    child : Text(product_name, style : TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0), ),
                  ),
                  new Text("\Rs.${product_price}", style : TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                ],)
              ),
              child: Image.asset((product_picture), fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
