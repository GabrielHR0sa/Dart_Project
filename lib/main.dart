/*
mesmo alterando a propriedade name
o hascode não muda
*/

void main() {
  var person = Person(name: 'Jacob', lastName: 'Moura', age: 31);
  print(
      'Name: ${person.name} LastName: ${person.lastName}  Age: ${person.age}');
  print(person.hashCode);

  person = person.copyWith(age: 30);
  print('---');
  print(
      'Name: ${person.name} LastName: ${person.lastName}  Age: ${person.age}');
  print(person.hashCode);
}

class Person {
  final String name;
  final String lastName;
  final int age;
  Person({required this.name, required this.lastName, required this.age});

//clone - PROTOTYPE
  Person copyWith({String? name, String? lastName, int? age}) {
    return Person(
        name: name ??
            this.name, // se esse cara for nulo, preenche com o padrão global
        lastName: lastName ?? this.lastName,
        age: age ?? this.age);
  }
}
