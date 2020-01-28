import 'package:flutter/material.dart';
import 'cart.dart';
import 'item.dart';


class Catalog extends StatefulWidget{

  State<StatefulWidget> createState(){

    return CatalogState();

  }

}

class CatalogState extends State<Catalog>{

   static final List<Item> catalog = Item.createCatalog();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Catalog', style: TextStyle(fontFamily: 'Tomorrow',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30),),
          actions: <Widget>[IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.black,),
            onPressed: ()=>_goCart(context),)
          ],
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: _addRows(),
          ),
        )
    );
  }

  List<Widget> _addRows(){

    List<Widget> offers =[];

    for(int i = 0; i < catalog.length; i++){
      var id = catalog[i].id;
      offers.add(
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: catalog[i].color,
                      )
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(catalog[i].name, style: TextStyle(fontSize: 20.0, fontFamily: 'Tomorrow'),),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: Cart.cart.contains(id)? ()=> removeOfCart(id): ()=> addToCart(id),
                  child: Cart.cart.contains(id)? Icon(Icons.check, semanticLabel: 'ADDED'): Text('ADD'),
                ),
              ),
            ],
          )
      );
    }
    return offers;
  }

  removeOfCart(int id){

    setState(() {
      Cart.cart.remove(id);
    });

  }

  addToCart(int id){

    setState(() {
      Cart.cart.add(id);
    });

  }

}

void _goCart(BuildContext context) {
  Navigator.pushNamed(context, "/CartScreen");
}