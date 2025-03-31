// 1. Classe Laptop
class Laptop {
int id;
String nome;
String ram;

Laptop(this.id, this.nome, this.ram);

@override
String toString() {
return 'ID: $id, Nome: $nome, RAM: $ram';
}
}
