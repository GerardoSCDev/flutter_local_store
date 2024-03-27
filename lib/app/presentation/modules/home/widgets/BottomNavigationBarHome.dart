import 'package:flutter/material.dart';

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
    Text('Index 0', style: optionStyle),
    Text('Index 1', style: optionStyle),
  ];
  static const List<BottomNavigationBarItem> _bottomNavigationBarItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.inventory_outlined), label: 'Inventario'),
    BottomNavigationBarItem(
        icon: Icon(Icons.point_of_sale_sharp), label: 'Ventas'),
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
          title: const Text('Inventario', style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(icon: const Icon(Icons.add_circle_outline, color: Colors.white,), onPressed: () {

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
