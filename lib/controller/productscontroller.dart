import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:appcrudfirestore/models/productsmodel.dart';

class ProductsController {
  //método assíncrono -> "ler e devolve"
  Future<List<ProductsModel>> findCargos() async {
    var jsonFile = await rootBundle.loadString('assets/products.json');
    //o dart convert o arquivo String (json) em dados
    List<dynamic> positions = json.decode(jsonFile) as List;
    return positions.map((c) => ProductsModel.fromMap(c)).toList();
  }

  late ProductsModel positionSelected;

  void selectPosition(ProductsModel positionSelected) {
    this.positionSelected = positionSelected;
  }
}
