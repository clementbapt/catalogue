import 'package:catalogue/catalog.dart';
import 'package:flutter/material.dart';
import 'item.dart';

class Cart extends StatelessWidget{

  static List<int> cart =[];
  double _price = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Cart', style: TextStyle(fontFamily: 'Tomorrow', fontStyle: FontStyle.italic, color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.white, iconTheme: IconThemeData(color: Colors.black)
      ),
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: cartDetail(),
              ),
            ),
            Divider(color: Colors.black, thickness: 1.7,),
            Container(
              alignment: Alignment.topLeft,
              height: 80.0,
              color: Colors.amberAccent,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        '\$' + this._price.toString(),
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 33.0,
                          fontFamily: 'Tomorrow',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90.0),
                    child: ButtonTheme(
                      height: 40.0,
                      child: RaisedButton(
                        color: Colors.white,
                        onPressed: null,
                        child: Text(
                          'BUY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }

  List <Widget> cartDetail(){

    List<Widget> details = [];

    cart.forEach(
        (id) => details.add(
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 8.0),
              child: Text(
                  '+ ' + CatalogState.catalog[id].name + ',     \$' + CatalogState.catalog[id].price.toString(),
                  style: TextStyle(fontFamily: 'Tomorrow', fontSize: 20.0),
                  textAlign: TextAlign.start,
              ),
            )
        ),
    );

    cart.forEach(
            (id) => _price += CatalogState.catalog[id].price

    );

    return details;

  }

}