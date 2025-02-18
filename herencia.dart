class Animal {
  String nombre;
  String raza;

  // Constructor
  Animal(this.nombre, this.raza);

  // Función comer
  void comer() {
    print('$nombre está comiendo.');
  }//fin funcion comer 
} //fin clase Animal

class Perro extends Animal {
  // Constructor
  Perro(String nombre, String raza) : super(nombre, raza);

  // Función ladra
  void ladra() {
    print('$nombre está ladrando.');
  }//fin funcion ladra

  // Función corre
  void corre() {
    print('$nombre está corriendo.');
  } //fin funcion corre
} //fin clase Perro

void main() {
  print("Karla Alejandra Balderrama Padilla Mat: 22308051281149 gpo 6J");
  // Crear una instancia de Perro
  Perro miPerro = Perro('Pecas', 'Labrador');
  print('Nombre: ${miPerro.nombre}');
  print('Raza: ${miPerro.raza}');

  // Llamar a las funciones
  miPerro.comer();  // Heredado de Animal
  miPerro.ladra();  // Propio de Perro
  miPerro.corre();  // Propio de Perro
}