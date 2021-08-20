void main(){
  var numerosLista = [];
  numerosLista.add(1);
  numerosLista.add(3);
  numerosLista.add(5);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(5);
  numerosLista.add(null);
  numerosLista.add(2);
  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(3);
  numerosSet.add(5);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(5);
  numerosSet.add(null);
  numerosSet.add(2);
  print(numerosSet);

  print(numerosLista.toSet());

  var numeros1 = {1,2,3,4,5,6};
  var numeros2 = {1,3,4,7};
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));
  print(numeros1.union(numeros2));
  print(numeros1.intersection(numeros2));

  print(numeros1.lookup(3));

  print(numeros1.elementAt(4));
  
}