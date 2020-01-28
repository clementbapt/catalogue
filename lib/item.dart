import 'package:flutter/material.dart';

class Item{

  int id;
  Color color;
  String name;
  final int price = 42;
  static final nameAndColors = [

    {'name': 'Code Smell', 'color': Color(0xFFEC2A29)},
    {'name': 'Control FLow', 'color': Color(0xFFDF014E)},
    {'name': 'Interpreter', 'color': Color(0xFF8800A0)},
    {'name': 'Recursion', 'color': Color(0xFF5220A8)},
    {'name': 'Sprint', 'color': Color(0xFF303AA7)},
    {'name': 'Heisenbug', 'color': Color(0xFF2480F0)},
    {'name': 'Spaghetti', 'color': Color(0xFF2A97F2)},
    {'name': 'Hydra Code', 'color': Color(0xFF2fA2C9)},
    {'name': 'Off-By-One', 'color': Color(0xFF278476)},
    {'name': 'Scope', 'color': Color(0xFF3EA540)},
    {'name': 'Callback', 'color': Color(0xFF7DBA3B)},
    {'name': 'Closure', 'color': Color(0xFFFCE72E)},
    {'name': 'Automata', 'color': Color(0xFFF8B407)},
    {'name': 'Bit Shift', 'color': Color(0xFFF48608)},
    {'name': 'Currying', 'color': Color(0xFFF03E1A)},


  ];

  Item(this.id, this.color, this.name);

  int get getId => this.id;

  static List<Item> createCatalog(){

    var length = nameAndColors.length;

    List<Item> catalog = [];
    for(int i = 0; i < length;  i++){

      catalog.add(Item(i, nameAndColors[i]['color'], nameAndColors[i]['name']));

    }
    return catalog;
  }

}