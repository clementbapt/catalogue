import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'catalog.dart';

void main(){
  
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colored Shop',
      home: Catalog(),
      routes: <String, WidgetBuilder>{
        "/CartScreen": (context) => Cart(),
    }
    );
  }
}

