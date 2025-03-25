import 'Laptop.dart';
import 'Camera.dart';
import 'House.dart';
import 'Cat.dart';

void main() {
var laptop1 = Laptop(1, 'Dell Inspiron', '8GB');
var laptop2 = Laptop(2, 'HP Pavilion', '16GB');
var laptop3 = Laptop(3, 'Lenovo ThinkPad', '32GB');

print("Exercício 1 - Laptop");
print(laptop1);
print(laptop2);
print(laptop3);
print("\n");

var casa1 = House(1, 'Castelo Ratimbum', 50000000);
var casa2 = House(2, 'Mansão', 7500000);
var casa3 = House(3, 'Castelo de diamantes', 10000000);

print("Exercício 2 - House");
List casas = [casa1, casa2, casa3];
for (var casa in casas) {
print(casa);
}
print("\n");

var gato = Cat(1, 'Mingau', 'Amarelo', 'Miau');
print("Exercício 3 - Cat");
print(gato);
print("\n");

var camera1 = Camera(1, 'Canon G7X', 'Preta', 3000);
var camera2 = Camera(2, 'Cibershoot', 'Branca', 2500);
var camera3 = Camera(3, 'Sony', 'Cinza', 4000);

print("Exercício 4 - Camera");
print(camera1);
print(camera2);
print(camera3);
print("\n");
}