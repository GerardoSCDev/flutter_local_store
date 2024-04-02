import 'package:flutter/material.dart';
import 'package:local_store/app/presentation/modules/inventory/widgets/ProductListItem.dart';

final List<String> productsName = ['Paquete individual galletas', '1Lt Leche alpura rica mil', 'Chocolates ferrero'];
final List<String> quantifies = ['10', '9', '0'];
final List<String> barcodes = ['1234567890', '0987654321', '1357911'];

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: productsName.length,
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        return ProductListItem(
            productName: productsName[index],
            quantity: quantifies[index],
            barcode: barcodes[index]);
      },
      separatorBuilder: (context, index) => const Divider(
        color: Colors.white,
      ),
    );
  }
}
