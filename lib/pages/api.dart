import 'package:combos/combos.dart';
import 'package:flutter/material.dart';
import 'package:appcrudfirestore/controller/productscontroller.dart';
import 'package:appcrudfirestore/models/productsmodel.dart';

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  var controller = ProductsController();
  @override
  void initState() {
    super.initState();
    controller.findProducts(); //devolve lista dos itens do json
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListCombo<ProductsModel>(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  controller.positionSelected?.name ?? 'Selecione um Produto'),
            ),
            getList: () => controller.findProducts(),
            onItemTapped: (ProductsModel value) {
              setState(() {
                controller.selectPosition(value);
              });
            },
            itemBuilder: (_, parameters, item) {
              return ListTile(title: Text(item.name));
            },
          ),
        ],
      ),
    ));
  }
}
