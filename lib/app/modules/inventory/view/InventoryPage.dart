import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:local_store/app/modules/inventory/view/widgets/FilterBar.dart';
import 'package:local_store/app/modules/inventory/view/widgets/ProductListItem.dart';

final List<String> productsName = [
  'Paquete individual galletas',
  '1Lt Leche alpura rica mil',
  'Chocolates ferrero',
  'Paquete individual galletas',
  '1Lt Leche alpura rica mil',
  'Chocolates ferrero',
  'Paquete individual galletas',
  '1Lt Leche alpura rica mil',
  'Chocolates ferrero',
];
final List<String> quantifies = [
  '10',
  '9',
  '0',
  '10',
  '9',
  '0',
  '10',
  '9',
  '0',
];
final List<String> barcodes = [
  '1234567890',
  '0987654321',
  '1357911',
  '1234567890',
  '0987654321',
  '1357911',
  '1234567890',
  '0987654321',
  '1357911',
];

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const FilterBar(),

          SliverList.separated(
            itemCount: productsName.length,
            // padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) {
              return ProductListItem(
                  productName: productsName[index],
                  quantity: quantifies[index],
                  barcode: barcodes[index]);
            },
            separatorBuilder: (context, index) => const Divider(
              color: Colors.white,
            ),
          ) // Other slivers for the scrollable content go here
        ],
      ),
    );
  }
}
