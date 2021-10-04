class UserModel {
  String id;
  String nome;
  String email;
  String tipo;

  UserModel({
    this.id,
    this.nome,
    this.email,
    this.tipo,
  });

  UserModel.fromJson(String userId, Map<String, dynamic> json) {
    id = userId;
    nome = json['nome'];
    email = json['email'];
    tipo = json['tipo'];
  }
}
