void main() {
  var funcaoAnonima = () {
    print('Chamou a funcao');
    return '2000';
  };

  chamarUmaFuncaoDeUmParamentro((nome){
    if(nome.isEmpty){
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });

  print(funcaoAnonima());
}

void chamarUmaFuncaoDeUmParamentro(Function(String nome) funcaoQlq){  
  var calculo = 1 + 1;
  var nomeCompleto = 'Rodrigo Rahman';
  funcaoQlq(nomeCompleto);
}

void chamarUmaFuncaoDeUmParamentroTypeDef(FuncaoqueRecebeNome funcaoQlq){  
  var calculo = 1 + 1;
  var nomeCompleto = 'Rodrigo Rahman';
  funcaoQlq(nomeCompleto);
}

typedef FuncaoqueRecebeNome = void Function(String nome);