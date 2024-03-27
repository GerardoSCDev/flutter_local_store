import 'package:flutter/material.dart';
import 'package:local_store/app/presentation/modules/home/widgets/BottomNavigationBarHome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarHome(),
    );
  }
}
