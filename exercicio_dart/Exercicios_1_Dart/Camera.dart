class Camera {
int _id;
String _marca;
String _cor;
double _preco;

Camera(this._id, this._marca, this._cor, this._preco);

int get id => _id;
String get marca => _marca;
String get cor => _cor;
double get preco => _preco;

set id(int novoId) => _id = novoId;
set marca(String novaMarca) => _marca = novaMarca;
set cor(String novaCor) => _cor = novaCor;
set preco(double novoPreco) => _preco = novoPreco;

@override
String toString() {
return 'ID: $id, Marca: $marca, Cor: $cor, Preço: R\$ $preco';
}
}
