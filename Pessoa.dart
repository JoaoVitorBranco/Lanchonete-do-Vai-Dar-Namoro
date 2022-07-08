import 'Comida.dart';
import 'Paladar.dart';
import 'VerificarQuantosDocesTemNumaLista.dart';

class Pessoa{
  String _nome;
  int _idade;
  bool _temDiabetes;
  List<Comida> _estomago = <Comida>[];


  void Comer(Comida comida){
    if(_temDiabetes && comida.paladar == Paladar.Doce){
      print("Não come isso não. Vc vai morrer");
      return;
    }

    _estomago.add(comida);

    if(_estomago.TemDocesNaLista() >= 3)
      _temDiabetes = true;
  }

  bool GetDiabetico() => _temDiabetes;
  Pessoa(this._nome, this._idade, this._temDiabetes);
}