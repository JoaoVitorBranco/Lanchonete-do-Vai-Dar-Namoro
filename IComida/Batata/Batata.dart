import '../IComida.dart';

class Batata implements IComida {
  String _acompanhamento;
  bool _temSal;

  //construtor
  Batata(String this._acompanhamento, bool this._temSal, String this.nome,
      String this.paladar, int this.preco, int this.serveQnts);

  //override
  @override
  String nome;
  @override
  String paladar;
  @override
  int preco;
  @override
  int serveQnts;

  //acompanhamento
  String get acompanhamento {
    return this._acompanhamento;
  }

  void set acompanhamento(String acompanhamentoRecebido) {
    if (acompanhamentoRecebido != null &&
        acompanhamentoRecebido.isEmpty == false) {
      this._acompanhamento = acompanhamentoRecebido;
    }
  }

  //temSal
  bool get temSal {
    return this._temSal;
  }

  void set temSal(bool temSalRecebido) {
    if (temSalRecebido != null) {
      this._temSal = temSalRecebido;
    }
  }
}
