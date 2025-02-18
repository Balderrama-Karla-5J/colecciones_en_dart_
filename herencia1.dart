import 'dart:io';

class Empleado {
  String nombre;
  String fechaNacimiento;
  String direccion;
  String idEmpleado;
  String telefono;
  double salario;
  String sexo;

  // Constructor
  Empleado({
    required this.nombre,
    required this.fechaNacimiento,
    required this.direccion,
    required this.idEmpleado,
    required this.telefono,
    required this.salario,
    required this.sexo,
  });

  // Función para capturar datos desde la interfaz
  void capturarDatos() {
    print("Ingrese el nombre del empleado:");
    nombre = stdin.readLineSync()!;

    print("Ingrese la fecha de nacimiento (DD/MM/AAAA):");
    fechaNacimiento = stdin.readLineSync()!;

    print("Ingrese la dirección:");
    direccion = stdin.readLineSync()!;

    print("Ingrese el ID del empleado:");
    idEmpleado = stdin.readLineSync()!;

    print("Ingrese el teléfono:");
    telefono = stdin.readLineSync()!;

    print("Ingrese el salario:");
    salario = double.parse(stdin.readLineSync()!);

    print("Ingrese el sexo (M/F):");
    sexo = stdin.readLineSync()!.toUpperCase();
  }
}

class Pedro extends Empleado {
  // Constructor de Pedro
  Pedro({
    required String nombre,
    required String fechaNacimiento,
    required String direccion,
    required String idEmpleado,
    required String telefono,
    required double salario,
    required String sexo,
  }) : super(
          nombre: nombre,
          fechaNacimiento: fechaNacimiento,
          direccion: direccion,
          idEmpleado: idEmpleado,
          telefono: telefono,
          salario: salario,
          sexo: sexo,
        );

  // Función para mostrar los datos del empleado
  void mostrarDatos() {
    print("Nombre: $nombre");
    print("Fecha de Nacimiento: $fechaNacimiento");
    print("Dirección: $direccion");
    print("ID Empleado: $idEmpleado");
    print("Teléfono: $telefono");
    print("Salario: $salario");
    print("Sexo: $sexo");
  }
}


void main() {
  // Crear una instancia de Pedro
  Pedro pedro = Pedro(
    nombre: "",
    fechaNacimiento: "",
    direccion: "",
    idEmpleado: "",
    telefono: "",
    salario: 0.0,
    sexo: "",
  );

  // Capturar los datos de Pedro
  pedro.capturarDatos();

  // Mostrar los datos de Pedro
  print("\nDatos del Empleado Pedro:");
  pedro.mostrarDatos();
}