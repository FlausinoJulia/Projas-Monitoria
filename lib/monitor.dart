class Monitor{
  int id = 0;
  String nome = "";
  String email = "";
  List<String> horarios = [];
  String foto = "";
  String curso = "";

  Monitor(int id, String nome, String email, List<String> horarios, String foto, String curso){
    this.id = id;
    this.nome = nome;
    this.email = email;
    this.horarios = horarios;
    this.foto = foto;
    this.curso = curso;
  }

  Monitor.fromJson(Map json):
    id = json['id'],
    nome = json['nome'],
    email = json['email'],
    horarios = json['horarios'],
    foto = json['foto'],
    curso = json['curso'];

  Map toJson(){
    return {'id':id, 'nome':nome, 'email':email, 'horarios':horarios, 'foto':foto, 'curso':curso};
  }
}