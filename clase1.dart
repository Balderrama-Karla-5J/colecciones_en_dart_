class figura {
  int _largo;
  int _ancho;
  //constructor
  figura(this._largo, this._ancho);

   void mostrar(){
    print("Largo: $_largo ");
    print("Ancho: $_ancho");
   } //funcion mostrar

   void calculararea(){
    int area = _largo * _ancho;
     print("Area: $area");
   }//funcion calculararea

   void calcularperimetro(){
    int perimetro = 2 * (_largo +   _ancho);
     print("Perimetro: $perimetro");
}//clase figura
}
void main(){
  print("Karla Alejandra Balderrama Padilla Mat: 22308051281149 gpo 6J");
  //Crear a un objeto de la clase figura
  var rectangulo = figura(10, 5);
  //Mostrar los atributos del objeto
  rectangulo.mostrar();
  //Calcular el area del rectangulo
  rectangulo.calculararea();
  //Calcular el perimetro del rectangulo
  rectangulo.calcularperimetro();
}//main
