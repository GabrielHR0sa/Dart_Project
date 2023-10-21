void main(List<String> arguments) {
  //o valor do parâmetro é sempre o que prevalece
  printName(name: 'Jacob', lastName: 'Moura');
}

//em lastname é definido o padrão para não haver nulo
// porem o do método sobrescreve o definido como padrão
// String lastName = '' => o que estiver dentro do '' será como padrão
void printName({required String name, required String lastName}) {
  print('$name $lastName');
}


/*parâmetro posicional, mas não obrigatório
void printName( String name,[String lastName = '']) {
  print('$name $lastName');
}*/