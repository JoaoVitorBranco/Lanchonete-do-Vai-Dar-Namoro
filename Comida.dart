import 'Paladar.dart';

abstract class Comida{
   String nome;
   Comida? acompanhamento;
   double preco;
   Paladar paladar;

   Comida(this.nome, this.acompanhamento, this.preco, this.paladar);
}
