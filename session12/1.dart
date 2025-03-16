void main() {
  var inventory = Inventory();

  inventory.addProduct(PhysicalProduct(
      name: "Laptop", price: 1500, category: "Electronics", stockQuantity: 10, discount: 10));
  inventory.addProduct(PhysicalProduct(
      name: "T-Shirt", price: 30, category: "Clothing", stockQuantity: 50));
  inventory.addProduct(DigitalProduct(name: "E-book", price: 10, fileType: "PDF", discount: 5));

  print("All Products: ");
  inventory.products.forEach(print);

  print("Filtered: Digital Products");
  inventory.filterByType(DigitalProduct).forEach(print);

  print("Filtered: Electronics Category");
  inventory.filterByCategory("Electronics").forEach(print);

  print("Total Inventory Value: \$${inventory.totalInventoryValue.toStringAsFixed(2)}");
}

abstract class Product {
  String name;
  double price;
  double discount;

  Product({required this.name, required this.price, this.discount = 0});

  double get discountedPrice => price * (1 - discount / 100);

  @override
  String toString() => "$name - \$${discountedPrice.toStringAsFixed(2)}";
}

class PhysicalProduct extends Product {
  String category;
  int stockQuantity;

  PhysicalProduct({
    required String name,
    required double price,
    this.category = "General",
    required this.stockQuantity,
    double discount = 0,
  }) : super(name: name, price: price, discount: discount);
}

class DigitalProduct extends Product {
  String fileType;

  DigitalProduct({
    required String name,
    required double price,
    this.fileType = "Unknown",
    double discount = 0,
  }) : super(name: name, price: price, discount: discount);
}

class Inventory {
  List<Product> products = [];

  void addProduct(Product product) => products.add(product);

  List<Product> filterByType(Type type) =>
      products.where((product) => product.runtimeType == type).toList();

  List<PhysicalProduct> filterByCategory(String category) =>
      products.whereType<PhysicalProduct>().where((p) => p.category == category).toList();

  double get totalInventoryValue => products.fold(0, (sum, p) => sum + p.discountedPrice);
}

