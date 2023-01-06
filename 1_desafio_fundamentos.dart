void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)

  final pacientes = [ // patient
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|BA',
    'Joaquim Pedrosa|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|PA',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Castro|55|jornalista|SP',
  ];
  //! Baseado no array acima monte um relatorio onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('1 - Pacientes com idade superior a 20 anos\n');
  for (var paciente in pacientes) { // patients
    final pacientesInfo = paciente.split('|'); // patientInfo
    final idade20mais = int.tryParse(pacientesInfo[1]) ?? 0; // ageOver20
    if (idade20mais > 20) {
      print(pacientesInfo[0]);
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão
  //! (desenvolvedor, estudante, dentista, jornalista)
  print('\n2- Divisão de pacientes por profissão: \n');
  List<String> desenvolvedor = []; // developer
  List<String> estudante = []; // student
  List<String> dentista = []; // dentist
  List<String> jornalista = []; // journalist

  for (var paciente in pacientes) {
    final pacienteInfo = paciente.split('|');
    var nome = pacienteInfo.first; // name
    final profissao = pacienteInfo[2].toLowerCase(); // occupation
    if (profissao == 'desenvolvedor') {
      desenvolvedor.add(nome);
    } else if (profissao == 'estudante') {
      estudante.add(nome);
    } else if (profissao == 'dentista') {
      dentista.add(nome);
    } else if (profissao == 'jornalista') {
      jornalista.add(nome);
    }
  }
  print('Desenvolvedores:');
  desenvolvedor.forEach(print);
  print('total de desenvolvedores: ${desenvolvedor.length}');

  print('\nEstudantes:');
  estudante.forEach(print);
  print('total de estudantes: ${estudante.length}');

  print('\nDentista:');
  dentista.forEach(print);
  print('total de dentistas: ${dentista.length}');

  print('\nJornalista:');
  jornalista.forEach(print);
  print('total de jornalistas: ${jornalista.length}');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('\n3 - Pacientes que residem em SP\n');
  for (var paciente in pacientes) {
    final pacienteInfo = paciente.split('|');
    final paulistas = pacienteInfo[3].toUpperCase();
    if (paulistas == 'SP') {
      print(pacienteInfo[0]);
    }
  }
}
