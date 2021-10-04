import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:menu_core/core/model/product_model.dart';


class OrdersModel {
  String id;
  String usuarioId;
  String nomeUsuario;
  List<ProductModel> produtos;
  double valorPedido;
  String observacao;
  DateTime dataPedido;

  OrdersModel({
    this.id,
    this.usuarioId,
    this.nomeUsuario,
    this.produtos,
    this.valorPedido,
    this.observacao,
    this.dataPedido,
  });

  OrdersModel.fromJson(String docId, Map<String, dynamic> json) {
    id = docId;
    usuarioId = json['usuarioId'];
    nomeUsuario = json['nomeUsuario'];
    final produtosList = json['produtos'] as List;
    if (produtosList != null && produtosList.isNotEmpty) {
      produtos = List.generate(produtosList.length,
              (i) => ProductModel.fromJson(null, produtosList[i]));
    }
    valorPedido = json['valorPedido'];
    observacao = json['observacao'];
    final timestamp = json['dataPedido'] as Timestamp;
    if (timestamp != null) {
      dataPedido = DateTime.parse(timestamp.toDate().toString());
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usuarioId'] = this.usuarioId;
    data['nomeUsuario'] = this.nomeUsuario;
    if (produtos != null && produtos.isNotEmpty) {
      final produtosList = List.generate(produtos.length, (i) => produtos[i].toJson());
      data['produtos'] = produtosList;
    }
    data['valorPedido'] = this.valorPedido;
    data['observacao'] = this.observacao;
    data['dataPedido'] = this.dataPedido;
    return data;
  }
}
