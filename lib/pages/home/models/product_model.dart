class ProductModel {
  final int id;
  final String title;
  final double price;
  ProductModel({required this.id, required this.title, required this.price});
  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, price: $price)';
  }
}
