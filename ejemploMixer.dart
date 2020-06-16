void main()
{

  final pato = new Pato();
  
  pato.volar();
  pato.caminar();
  
  final pezVolador = new PezVolador();
  pezVolador.nadar();
}

abstract class Animal {}
  
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('estoy Volando'); 
}

abstract class Caminante {
  void caminar() => print('estoy Caminando'); 
}


abstract class Nadador {
  void nadar() => print('estoy nadando'); 
}

class Delfin extends Mamifero with Nadador{}

class Murcielago extends Mamifero with Caminante, Volador{}

class Perro extends Mamifero with Caminante{}

class Pato extends Ave with Caminante,Volador,Nadador{}

class Tiburon extends Pez with Nadador{}

class PezVolador extends Pez with Nadador, Volador{}