import 'dart:convert';

class ProductsModel {
  //classe produtos

  String id;
  String name;
  String brand;
  String price;

  //método construtor da classe
  ProductsModel(
      {required this.id,
      required this.name,
      required this.brand,
      required this.price});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'brand': brand, 'price': price};
  }

  static ProductsModel fromMap(Map<String, dynamic> map) {
    if (map == null) {}

    return ProductsModel(
        id: map['id'],
        name: map['name'],
        brand: map['brand'],
        price: map['price']);
  }

  String toJson() => json.encode(toMap());

  static ProductsModel fromJson(String source) => fromMap(json.decode(source));
}
