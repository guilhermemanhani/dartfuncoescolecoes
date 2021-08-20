void main() {
  print(somaInteiros(10, 10));
  print(somaDoubleNomeado(numero1: 10.2, numero2: 10));
  print(somaDoubleNomeado(numero2: 10, numero1: 10.2));
  print(somaDoubleNomeadoObrigatorio(numero1: 10.4, numero2: 10.7));
  print(somaDoubleNomeadoObrigatorio2(numero1: null, numero2: 10));
  print(somaDoubleDefault());
  print(somaDoubleDefault(numero2: 10, numero1: 20));
  print(somaInteirosOpcional(1, 1));
  print(somaInteirosOpcional(1));
  parametrosNormaisComNomeados(1, nome: "nome", idade: 11);
  parametrosNormaisComOpcional(1, null, 11);
}

int somaInteiros(int numero1, int numero2) {
  return numero1 + numero2;
}

double somaDoubleNomeado({double? numero1, double? numero2}) {
  if (numero1 != null && numero2 != null) {
    return numero1 + numero2;
  }
  return 0.0;
}

double somaDoubleNomeadoObrigatorio(
    {required double numero1, required double numero2}) {
  return numero1 + numero2;
}

double somaDoubleNomeadoObrigatorio2(
    {required double? numero1, required double numero2}) {
  numero1 ??= 0;
  return numero1 + numero2;
}

double somaDoubleDefault({double numero1 = 0, double numero2 = 0}) {
  return numero1 + numero2;
}

int somaInteirosOpcional([int numero1 = 0, int numero2 = 0]) {
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero, {required String nome, required int idade}) {

}

void parametrosNormaisComOpcional(int numero, [String? pai, int? idade]) {

}
