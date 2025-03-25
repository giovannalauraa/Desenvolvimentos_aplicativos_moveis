class Animal {
int id;
String nome;
String cor;

Animal(this.id, this.nome, this.cor);

@override
String toString() {
return 'ID: $id, Nome: $nome, Cor: $cor';
}
}
