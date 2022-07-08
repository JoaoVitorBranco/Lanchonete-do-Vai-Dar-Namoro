import 'Comida.dart';

class Hamburguer  extends Comida{

  String _pontoDaCarne;

  Hamburguer(super.nome, super.acompanhamento, super.preco, super.paladar, this._pontoDaCarne);

}