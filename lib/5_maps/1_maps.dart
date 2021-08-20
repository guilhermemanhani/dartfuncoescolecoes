void main(){
  final paciente = <String, String>{
    'nome': 'Rodrigo Rahman',
    'curso': 'Academia do flutter'
  };

  // o mapa pode ser nulo mas se for criado deve conter a chave
  // e o valor nao nulos
  Map<String, String>? pacientNullsafyty = null;
  Map<String, String>? pacientNullsafyty2 = {
  // null: null nao pode null em nenhum lado
    'nome': 'Rodrigo Rahman',
    'curso': 'Academia do flutter'
  };

  // O mapa e a chave nao podem ser nulos maso valor pode ser nulo
  var pacienteNullSafety3 = <String?, String>{
    null: 'Rodrigo'
  };
  

  var produtos = <String, String>{};
  produtos.putIfAbsent('key', () => 'keyachada');
  produtos.putIfAbsent('key', () => 'key Achada');
  print(produtos);
  produtos.update('key', (value) => 'key Alterada');
  produtos.update('novaChave', (value) => '10,', ifAbsent: () => '100');
  print(produtos);
  print('Produto ${produtos['key']}');
  print('-----------------');

  // nao usar foreach quando for usar async
  produtos.forEach((key, value) {
    print('Chave: $key: $value');
  });
  print('-----------------');
  for(var entry in produtos.entries){
    print('Chave: ${entry.key}: ${entry.value}');
  }

  var novoMapaProdutos = produtos.map((key, value)  {
    return MapEntry(key + '_novo', value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object> {
    'nome': 'Guilherme',
    'cursos': [
      {
        'nomeCurso': 'Academia do Flutter',
        'descricao': 'top curso'
      },
      {
        'nomeCurso': 'Arquiteto do Flutter',
        'descricao': 'Melhor curso'
      }
    ]
  };

  print(mapa['cursos'][0]);
}