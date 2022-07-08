import 'Comida.dart';

class MilkShake extends Comida{
  bool canudoDePlastico;
  String sabor;

  MilkShake(super.nome, super.acompanhamento, super.preco, super.paladar, this.canudoDePlastico, this.sabor);


}