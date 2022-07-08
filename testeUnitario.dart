void testeUnitario(var real, var esperado, String funcao, {String tipo = "="}) {
  print("\u001b[1;34mTestando função $funcao");
  if (tipo == "=") {
    if (real == esperado) {
      print("\u001b[1;32mFuncionando! =)");
    } else {
      print("\u001b[1;31mErro: Esperava '${esperado}', recebido '${real}'");
    }
  } else {
    if (real == esperado) {
      print("\u001b[1;31mErro: Esperava que fosse diferente de '${esperado}'");
    } else {
      print("\u001b[1;32mFuncionando! =)");
    }
  }
}
