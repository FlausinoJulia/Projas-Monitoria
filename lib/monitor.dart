class Monitor{
  int id = 0;
  String nome = "";
  String email = "";
  String horarios = "";
  String foto = "";

  Monitor(int id, String nome, String email, String horarios, String foto){
    this.id = id;
    this.nome = nome;
    this.email = email;
    this.horarios = horarios;
    this.foto = foto;
  }

  Monitor.fromJson(Map json):
    id = json['id'],
    nome = json['nome'],
    email = json['email'],
    horarios = json['horarios'],
    foto = json['foto'];

  Map toJson(){
    return {'id':id, 'nome':nome, 'email':email, 'horarios':horarios, 'foto':foto};
  }
}