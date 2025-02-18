import 'dart:io';

class Libro {
  String titulo;
  String autor;
  String ilustrador;
  String id_libro;
  int anio_salida;
  double precio;
  int stock;

  // Constructor
  Libro({
    required this.titulo,
    required this.autor,
    required this.ilustrador,
    required this.id_libro,
    required this.anio_salida,
    required this.precio,
    required this.stock,
  });

  // Función para capturar datos desde la interfaz
  void captura_datos() {
    print("Ingrese el título del libro:");
    titulo = stdin.readLineSync()!;

    print("Ingrese el autor del libro:");
    autor = stdin.readLineSync()!;

    print("Ingrese el ilustrador del libro:");
    ilustrador = stdin.readLineSync()!;

    print("Ingrese el ID del libro:");
    id_libro = stdin.readLineSync()!;

    print("Ingrese el año de salida del libro:");
    anio_salida = int.parse(stdin.readLineSync()!);

    print("Ingrese el precio del libro:");
    precio = double.parse(stdin.readLineSync()!);

    print("Ingrese el stock del libro:");
    stock = int.parse(stdin.readLineSync()!);
  }
}

class Sherlock_Holmes extends Libro {
  // Constructor de Sherlock_Holmes
  Sherlock_Holmes({
    required String titulo,
    required String autor,
    required String ilustrador,
    required String id_libro,
    required int anio_salida,
    required double precio,
    required int stock,
  }) : super(
          titulo: titulo,
          autor: autor,
          ilustrador: ilustrador,
          id_libro: id_libro,
          anio_salida: anio_salida,
          precio: precio,
          stock: stock,
        );

  // Función para mostrar los datos del libro
  void mostrar_datos() {
    print("\nDatos del Libro Sherlock Holmes:");
    print("Título: $titulo");
    print("Autor: $autor");
    print("Ilustrador: $ilustrador");
    print("ID Libro: $id_libro");
    print("Año de Salida: $anio_salida");
    print("Precio: $precio");
    print("Stock: $stock");
  }
}

// clase Sucursal
class Sucursal {
  String id_sucursal;
  String direccion;
  String telefono;
  String correo;
  int stock;
  String empleados;
  String horario;

  // Constructor
  Sucursal({
    required this.id_sucursal,
    required this.direccion,
    required this.telefono,
    required this.correo,
    required this.stock,
    required this.empleados,
    required this.horario,
  });

  // Función para capturar datos desde la interfaz
  void captura_datos() {
    print("Ingrese el ID de la sucursal:");
    id_sucursal = stdin.readLineSync()!;

    print("Ingrese la dirección de la sucursal:");
    direccion = stdin.readLineSync()!;

    print("Ingrese el teléfono de la sucursal:");
    telefono = stdin.readLineSync()!;

    print("Ingrese el correo de la sucursal:");
    correo = stdin.readLineSync()!;

    print("Ingrese el stock de la sucursal:");
    stock = int.parse(stdin.readLineSync()!);

    print("Ingrese los empleados de la sucursal:");
    empleados = stdin.readLineSync()!;

    print("Ingrese el horario de la sucursal:");
    horario = stdin.readLineSync()!;
  }
}

class Sucursal_Norte extends Sucursal {
  // Constructor de Sucursal_Norte
  Sucursal_Norte({
    required String id_sucursal,
    required String direccion,
    required String telefono,
    required String correo,
    required int stock,
    required String empleados,
    required String horario,
  }) : super(
          id_sucursal: id_sucursal,
          direccion: direccion,
          telefono: telefono,
          correo: correo,
          stock: stock,
          empleados: empleados,
          horario: horario,
        );

  // Función para mostrar los datos de la sucursal
  void mostrar_datos() {
    print("\nDatos de la Sucursal Norte:");
    print("ID Sucursal: $id_sucursal");
    print("Dirección: $direccion");
    print("Teléfono: $telefono");
    print("Correo: $correo");
    print("Stock: $stock");
    print("Empleados: $empleados");
    print("Horario: $horario");
  }
}

void main() {

  print("------------------ Tabla libros  ----------------------");
  // Crear una instancia de Sherlock_Holmes con datos iniciales vacíos
  Sherlock_Holmes sherlock = Sherlock_Holmes(
    titulo: "",
    autor: "",
    ilustrador: "",
    id_libro: "",
    anio_salida: 0,
    precio: 0.0,
    stock: 0,
  );

  // Capturar los datos del libro Sherlock Holmes
  print("Capturando datos del libro Sherlock Holmes...");
  sherlock.captura_datos();

  // Mostrar los datos del libro Sherlock Holmes
  sherlock.mostrar_datos();

  print("------------------ Tabla sucursal ----------------------");
  // Crear una instancia de Sucursal_Norte con datos iniciales vacíos
  Sucursal_Norte sucursalNorte = Sucursal_Norte(
    id_sucursal: "",
    direccion: "",
    telefono: "",
    correo: "",
    stock: 0,
    empleados: "",
    horario: "",
  );

  // Capturar los datos de la sucursal norte
  print("Capturando datos de la Sucursal Norte...");
  sucursalNorte.captura_datos();

  // Mostrar los datos de la sucursal norte
  sucursalNorte.mostrar_datos();
}
