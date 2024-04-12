import 'package:flutter/material.dart';
import 'package:local_store/app/modules/inventory/models/InventoryModel.dart';
import 'package:local_store/app/modules/inventory/viewmodel/ProductListItemViewModel.dart';

class ProductListItem extends StatelessWidget {
  final String productName;
  final String quantity;
  final String barcode;

  ProductListItem(
      {super.key,
      required this.productName,
      required this.quantity,
      required this.barcode});

  final  productListItemVM = ProductListItemViewModel();

  Color getColorStatusQuantify() {
    switch (productListItemVM.validateQuantityProducts(int.parse(quantity))) {
      case StateQuantityProducts.empty:
        return Colors.red;
      case StateQuantityProducts.low:
        return Colors.yellow;
      case StateQuantityProducts.complete:
        return Colors.green;
      case StateQuantityProducts.unknown:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey,
      child: SizedBox(
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 20,
              decoration: BoxDecoration(
                  color: getColorStatusQuantify(),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
            ),
            Container(
              width: 100,
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/productos-lacteos.png'),
            ),
            Flexible(
                child: ListTile(
              title: Text(
                productName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Cantidad: $quantity\nCódigo: $barcode',
                style: const TextStyle(fontSize: 15),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
