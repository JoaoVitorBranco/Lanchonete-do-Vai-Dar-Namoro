import '../IComida/IComida.dart';

class Privada {
  late List<IComida> _dejetos;
  late bool _taEntupida;

  // construtor
  Privada(List<IComida> dejetos) {
    this._dejetos = dejetos;
    this._taEntupida = this._ehEntupida();
  }

  // dejetos
  List<IComida> get dejetos {
    return this._dejetos;
  }

  void set dejetos(List<IComida> dejetosRecebido) {
    if (dejetosRecebido.length != 0) {
      this._dejetos = dejetosRecebido;
    }
  }

  // taEntupida
  bool get taEntupida {
    return _taEntupida;
  }

  // MÉTODOS
  // ehEntupida
  bool _ehEntupida() {
    if (this._dejetos.length >= 5) {
      return true;
    } else {
      return false;
    }
  }

  // descaga
  void descaga() {
    _dejetos.clear();
    this._taEntupida = false;
  }
}
