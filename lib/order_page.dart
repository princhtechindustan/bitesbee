// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bitesbee/cart_nav.dart';
import 'package:bitesbee/history_nav.dart';
import 'package:bitesbee/nav_four.dart';
import 'package:bitesbee/profile_nav.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

  late  int _selectedIndex =  0;
  final List<Widget> _widgetOption = <Widget>[
    NavigationCart(),
    NavigationHistory(),
    NavigationProfile(),
    NavigationFour(),
  ];
  void _onItemTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedIndex),
    bottomNavigationBar: BottomNavigationBar(
      items:<BottomNavigationBarItem> [
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: "",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_time),
          label: "",
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
      elevation: 4,
      type: BottomNavigationBarType.fixed,
      selectedItemColor:  Color(0xffFFC545),
      unselectedItemColor: Color(0xff5A5A5A),
    ),
    );
  }
}
