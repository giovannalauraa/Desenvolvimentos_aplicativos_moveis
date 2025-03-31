class House {
int id;
String nome;
double preco;

House(this.id, this.nome, this.preco);

@override
String toString() {
return 'ID: $id, Nome: $nome, Preço: \R\$ $preco';
}
}