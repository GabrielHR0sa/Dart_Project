main() {
  //criando uma lista com os novos students
  List<Student> students = [];

  //instânciando o objeto
  Student ralf = Student(name: 'Ralf', age: 35);
  students.add(ralf);

  Student eduardo = Student(name: 'Eduardo', age: 48);
  students.add(eduardo);

  for (var student in students) {
    print(student.fullName());

    print('-------');
  }
}

class Student {
  var name;
  var age;

  //construtor
  //nomeado => na declaração precisa-se informar o valor
  //podemos passar parametros padrões como this.name = ''; ou deixalos como required
  Student({required this.name, required this.age});

  //método => função dentro de uma classe
  String fullName() {
    return '$name $age';
  }
}
