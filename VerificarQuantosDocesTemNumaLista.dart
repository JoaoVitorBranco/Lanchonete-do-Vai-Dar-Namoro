import 'Comida.dart';
import 'Paladar.dart';

extension TemDoces on List<Comida>{
  int TemDocesNaLista(){
    int quantidade = 0;
    forEach((element) {
      if(element.paladar == Paladar.Doce)
        quantidade++;
    });

    return quantidade;
  }
}