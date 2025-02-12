void main() {
  print("Karla Alejandra Balderrama Padilla Mat. 22308051281149 gpo 6J");
  Map<  String, dynamic> distribuidor = {
  "Id": 123,
  "Costo": 9.50,
  "Entregas": 50,
  "Telefono" : 644848464864,
  "Correo" : "Libro@gmail.com",
  "Nombre" : "LibroSS",
  "ciudad" : "Hermosillo",
  };
  print("-----Mapa de distribuidores");
  print(distribuidor);

  print("------iterar un map con forEach");
  distribuidor.forEach((key, value) {
    print("$key : $value");
  });

  print("------iterar un map con for in puros datos ");
  for (var value in distribuidor.values) {
    print("$value");
  }

   Map<  String, dynamic> libros = {
  "Titulo": "El principito",
  "Autor": "Antoine de Saint-Exupéry",
  "Ilustrador": "Antoine de Saint-Exupéry",
  "IdLibro" : 643,
  "año" :  1943,
  "Precio" : 150,
  "Stock" : 50,
  };
  print("-----Mapa de Libros");
  print(libros);

  print("------iterar un map con forEach Libros");
  libros.forEach((key, value) {
    print("$key : $value");
  });

  print("------iterar un map con for in puros datos Libros ");
  for (var value in libros.values) {
    print("$value");
  }
}
