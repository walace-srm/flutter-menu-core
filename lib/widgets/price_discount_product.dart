import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceDiscountProduct extends StatelessWidget {
  PriceDiscountProduct({
    this.desconto,
    this.preco,
  });

  final double desconto;
  final double preco;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColorLight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(''' Com o desconto de ${desconto ?? '0'}%, \n O preco de venda do produto será de R\$ ${preco.toStringAsFixed(2)}
      '''),
    );
  }
}
