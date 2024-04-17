import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:local_store/app/common/slangTexts/translations.g.dart';
import 'package:local_store/app/modules/inventory/view/InventoryPage.dart';
import 'package:local_store/app/modules/inventory/view/NewProductFormBottomSheet.dart';

class BottomNavigationBarHome extends StatefulWidget {
  const BottomNavigationBarHome({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarHome();
}

class _BottomNavigationBarHome extends State<BottomNavigationBarHome> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    InventoryPage(),
    Text('Index 1', style: optionStyle),
  ];
  static final List<String> _titlesPages = [
    texts.home.navBarBottomItemInventoryTitle,
    texts.home.navBarBottomItemSalesTitle
  ];
  static final List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: const Icon(Icons.inventory_outlined),
        label: _titlesPages[0]),
    BottomNavigationBarItem(
        icon: const Icon(Icons.point_of_sale_sharp),
        label: _titlesPages[1]),
  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF032030),
          title:
              Text(
                  _titlesPages[_selectedIndex],
                  style: const TextStyle(color: Colors.white)
              ),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                ),
                onPressed: () {
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return const NewProductFormBottomSheet();
                      }
                  );
                })
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35), topLeft: Radius.circular(35)),
            boxShadow: [
              BoxShadow(color: Colors.black87, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                unselectedItemColor: Colors.white54,
                selectedItemColor: Colors.white,
                onTap: _onItemTapped,
                backgroundColor: const Color(0xFF032030),
                items: _bottomNavigationBarItems),
          ),
        ));
  }
}
