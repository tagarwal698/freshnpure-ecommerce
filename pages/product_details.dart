import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_oldprice;
  final product_detail_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_oldprice,
    this.product_detail_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      )),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\Rs.${widget.product_detail_oldprice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough)),
                      ),
                      Expanded(
                        child: new Text("\Rs.${widget.product_detail_price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // THE FIRST BUTTONS
          Row(
            children: <Widget>[
              // the size/quantity button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Choose the quantity"),
                     //   content : new Text("Choose the quantity"),
                        actions: <Widget> [new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),)
                      ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation : 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Quantity"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Choose the weight"),
                           // content : new Text("Choose the weight"),
                            actions: <Widget> [new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Weight"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Choose the packs"),
                            actions: <Widget> [new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation : 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Packs"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

          Row(
            children: <Widget>[
              // the size/quantity button
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  textColor: Colors.grey,
                  elevation : 0.2,
                  child: new Text("Buy now", style : TextStyle(color: Colors.white),),
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.redAccent, onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.redAccent, onPressed: (){}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product Details",),
            subtitle: new Text("Haldiram's is an Indian sweets, snacks and restaurant company based out of Delhi and Nagpur. The company has manufacturing plants in a wide variety of locations such as Nagpur, New Delhi, Gurgaon, Rudrapur and Noida."),
          ),
        Divider(),
          new Row(
            children : <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name:", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
              child : new Text(widget.product_detail_name),)
            ],
          ),
          new Row(
            children : <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand:", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child : new Text("Brand X"),)     //still have to create this
            ],
          ),
          new Row(
            children : <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5.0),
                child : new Text("Fresh"),) // still have to create this
            ],
          ),
        ],
      ),
    );
  }
}
