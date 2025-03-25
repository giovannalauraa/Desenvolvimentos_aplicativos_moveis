import 'Animal.dart';

class Cat extends Animal {
String som;

Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);

@override
String toString() {
return '${super.toString()}, Som: $som';
}
}