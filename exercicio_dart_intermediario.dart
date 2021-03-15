main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  Set<String> nomesSet = Set<String>();
  for (var i = 0; i < pessoas.length; i++) {
    nomesSet.add(pessoas.elementAt(i));
  }

  int totalMasculino = 0;
  int totalFeminino = 0;
  var maiores = [];
  nomesSet.forEach((sexo) {
    if (sexo.split('|')[2].contains('Masculino')) {
      totalMasculino++;
    }
    if (sexo.split('|')[2].contains('Feminino')) {
      totalFeminino++;
    }
    if (int.parse(sexo.split('|')[1]) > 18) {
      maiores.add(sexo);
    }
  });

  print('=========================================');
  print('Total de pessoas do sexo Masculino ${totalMasculino}');
  print('Total de pessoas do sexo Feminino ${totalFeminino}');
  print('=========================================');

  print('');

  print('========PESSOAS MAIORES DE 18 ANOS=======');
  for (var i = 0; i < maiores.length; i++) {
    print(maiores[i]);
  }
  print('-----------------------------------------');
  print('Num total de ${maiores.length} pessoas');
  print('========PESSOAS MAIORES DE 18 ANOS=======');

  // maiores
  //     .sort((n1, n2) => int.parse(n1.split('|')[1].compare(n2.split('|')[1])));

  print('');
  var maisVelho = nomesSet.toList();
  maisVelho.sort((n1, n2) => n1.split('|')[1].compareTo(n2.split('|')[1]));
  print('A pessoa mais velha é => ${maisVelho.last}');

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  // 4 - Encontre a pessoa mais velha.
}
