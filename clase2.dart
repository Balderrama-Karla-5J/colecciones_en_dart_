import 'dart:io'; // Para usar stdin y stdout

class Libro {
  // Atributos de la clase
  String titulo;
  String autor;
  String ilustrador;
  int idLibro;
  int anioDeSalida;
  double precio;
  int stock;

  // Constructor de la clase
  Libro({
    required this.titulo,
    required this.autor,
    required this.ilustrador,
    required this.idLibro,
    required this.anioDeSalida,
    required this.precio,
    required this.stock,
  });

  // Función para capturar datos desde la consola
  void capturarDatos() {
    print('Ingrese los datos del libro:');

    stdout.write('Título: ');
    titulo = stdin.readLineSync() ?? '';

    stdout.write('Autor: ');
    autor = stdin.readLineSync() ?? '';

    stdout.write('Ilustrador: ');
    ilustrador = stdin.readLineSync() ?? '';

    stdout.write('ID Libro: ');
    idLibro = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    stdout.write('Año de Salida: ');
    anioDeSalida = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    stdout.write('Precio: ');
    precio = double.tryParse(stdin.readLineSync() ?? '0.0') ?? 0.0;

    stdout.write('Stock: ');
    stock = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print('\nDatos del libro:');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Ilustrador: $ilustrador');
    print('ID Libro: $idLibro');
    print('Año de Salida: $anioDeSalida');
    print('Precio: \$$precio');
    print('Stock: $stock');
  }
}

//--------------------- CLASE DISTRIBUIDOR ---------------------
class Distribuidor {
  // Atributos de la clase
  int idDistribuidor;
  double costoEntrega;
  int entregas;
  String telefono;
  String correo;
  String nombre;
  String ciudad;

  // Constructor de la clase
  Distribuidor({
    required this.idDistribuidor,
    required this.costoEntrega,
    required this.entregas,
    required this.telefono,
    required this.correo,
    required this.nombre,
    required this.ciudad,
  });

  // Función para capturar datos desde la consola
  void capturarDatos() {
    print('Ingrese los datos del distribuidor:');

    stdout.write('ID Distribuidor: ');
    idDistribuidor = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    stdout.write('Costo de Entrega: ');
    costoEntrega = double.tryParse(stdin.readLineSync() ?? '0.0') ?? 0.0;

    stdout.write('Entregas: ');
    entregas = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    stdout.write('Teléfono: ');
    telefono = stdin.readLineSync() ?? '';

    stdout.write('Correo: ');
    correo = stdin.readLineSync() ?? '';

    stdout.write('Nombre: ');
    nombre = stdin.readLineSync() ?? '';

    stdout.write('Ciudad: ');
    ciudad = stdin.readLineSync() ?? '';
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print('\nDatos del distribuidor:');
    print('ID Distribuidor: $idDistribuidor');
    print('Costo de Entrega: \$$costoEntrega');
    print('Entregas: $entregas');
    print('Teléfono: $telefono');
    print('Correo: $correo');
    print('Nombre: $nombre');
    print('Ciudad: $ciudad');
  }
}

//------------------------CLASE CLIENTE------------------------
class Cliente {
  // Atributos de la clase
  String nombre;
  int idCliente;
  String direccion;
  String telefono;
  String correo;
  int edad;
  String sexo;

  // Constructor de la clase
  Cliente({
    required this.nombre,
    required this.idCliente,
    required this.direccion,
    required this.telefono,
    required this.correo,
    required this.edad,
    required this.sexo,
  });

  // Función para capturar datos desde la consola
  void capturarDatos() {
    print('Ingrese los datos del cliente:');

    stdout.write('Nombre: ');
    nombre = stdin.readLineSync() ?? '';

    stdout.write('ID Cliente: ');
    idCliente = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    stdout.write('Dirección: ');
    direccion = stdin.readLineSync() ?? '';

    stdout.write('Teléfono: ');
    telefono = stdin.readLineSync() ?? '';

    stdout.write('Correo: ');
    correo = stdin.readLineSync() ?? '';

    stdout.write('Edad: ');
    edad = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    stdout.write('Sexo (M/F): ');
    sexo = stdin.readLineSync() ?? '';
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print('\nDatos del cliente:');
    print('Nombre: $nombre');
    print('ID Cliente: $idCliente');
    print('Dirección: $direccion');
    print('Teléfono: $telefono');
    print('Correo: $correo');
    print('Edad: $edad');
    print('Sexo: $sexo');
  }
}
//-------------------------MAIN-------------------------
void main() {
  // Crear un objeto Libro con valores iniciales vacíos o por defecto
  Libro libro = Libro(
    titulo: '',
    autor: '',
    ilustrador: '',
    idLibro: 0,
    anioDeSalida: 0,
    precio: 0.0,
    stock: 0,
  );
  //---------------------LIBRO---------------------

  print("-------TABLA DE LIBROS-------");
  // Capturar datos desde la consola
  libro.capturarDatos();

  // Mostrar los datos del libro
  libro.mostrarDatos();


//---------------------DISTRIBUIDOR---------------------

   Distribuidor distribuidor = Distribuidor(
    idDistribuidor: 0,
    costoEntrega: 0.0,
    entregas: 0,
    telefono: '',
    correo: '',
    nombre: '',
    ciudad: '',
  );

  print("\n\n-------TABLA DE DISTRIBUIDORES-------");

  // Capturar datos desde la consola
  distribuidor.capturarDatos();

  // Mostrar los datos del distribuidor
  distribuidor.mostrarDatos();

//-------------------------CLIENTE-------------------------

  Cliente cliente = Cliente(
    nombre: '',
    idCliente: 0,
    direccion: '',
    telefono: '',
    correo: '',
    edad: 0,
    sexo: '',
  );

  print("\n\n-------TABLA DE CLIENTES-------");
  // Capturar datos desde la consola
  cliente.capturarDatos();

  // Mostrar los datos del cliente
  cliente.mostrarDatos();


}