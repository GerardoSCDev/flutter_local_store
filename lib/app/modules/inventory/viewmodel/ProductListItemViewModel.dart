import 'package:local_store/app/modules/inventory/models/InventoryModel.dart';

class ProductListItemViewModel {
  StateQuantityProducts validateQuantityProducts(int quantity) {
    if (quantity == 0) {
      return StateQuantityProducts.empty;
    }
    if (quantity > 0 && quantity < 10) {
      return StateQuantityProducts.low;
    }
    if (quantity >= 0) {
      return StateQuantityProducts.complete;
    }
    return StateQuantityProducts.unknown;
  }
}
