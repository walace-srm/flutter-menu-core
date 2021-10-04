class CategoryModel {
  String id;
  String nome;
  String descricao;
  String urlImagem;

  CategoryModel({
    this.id,
    this.nome,
    this.descricao,
    this.urlImagem,
  });

  CategoryModel.fromJson(String userId, Map<String, dynamic> json) {
    id = userId;
    nome = json['nome'];
    descricao = json['descricao'];
    urlImagem = json['urlImagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['urlImagem'] = this.urlImagem;
    return data;
  }
}
