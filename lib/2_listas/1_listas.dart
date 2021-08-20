void main(){

  var list = [
    [1,2],
    [3,4],    
  ];
  var interable = list.expand((element) => element);
  var listaNova = list.expand((element) => element).toList();
  print(interable);
  print(listaNova);

  final listaBuscar = ['Rodrigo', 'Joao', 'Jose'];

  if(listaBuscar.any((element) => element == 'Joao')){
    print('Tem Joao');
  } else {
    print('Nao tem Joao');
  }

  if(listaBuscar.every((element) => element.contains('J'))){
    print('Todos os nomes tem a letra J');    
  } else {
    print('Nem todos os nomes tem a letra J');
  }

  var listaPacientes = [
    'Rodrigo Rahman|37',
    'Luana Rahman|27',
    'Guilherme|7',
    'Rahman|7',
    'Andre|50',
  ];

  var listaPacientes2 = [
    'Rodrigo Rahman|37',
    'Luana Rahman|27',
    'Guilherme|7',
    'Rahman|7',
    'Andre|50',
  ];

  listaPacientes.sort((pacientes1, pacientes2){
    final pacienteDados1= pacientes1.split('|');
    final pacienteDados2= pacientes2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);
    if(idadePaciente1 < idadePaciente2){
      return 1;
    } else if(idadePaciente1 == idadePaciente2){
      return 0;
    } else{
       return -1;
    }

  });
  print(listaPacientes);


  listaPacientes2.sort((pacientes1, pacientes2){
    final pacienteDados1= pacientes1.split('|');
    final pacienteDados2= pacientes2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);
    
    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);
}