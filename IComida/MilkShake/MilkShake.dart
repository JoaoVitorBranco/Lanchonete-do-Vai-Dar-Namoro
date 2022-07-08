import '../IComida.dart';

class MilkShake implements IComida {
  String _sabor;
  bool _temCanudoPlastico;

  // Override
  @override
  String nome;

  @override
  String paladar;

  @override
  int preco;

  @override
  int serveQnts;

  // Construtor
  MilkShake(String this._sabor, bool this._temCanudoPlastico, String this.nome,
      String this.paladar, int this.preco, int this.serveQnts);

  // sabor
  String get sabor {
    return _sabor;
  }

  void set sabor(String saborRecebido) {
    if (saborRecebido != null && saborRecebido != "") {
      this._sabor = saborRecebido;
    }
  }

  // temCanudoPlastico
  bool get temCanudoPlastico {
    return _temCanudoPlastico;
  }

  void set temCanudoPlastico(bool temCanudoPlasticoRecebido) {
    _temCanudoPlastico = temCanudoPlasticoRecebido;
  }
}
