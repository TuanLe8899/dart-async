void main(List<String> arguments) async {
  print("Introduce myself...");
  print("My name: " + await fetchName());
  print("Age: " + await fetchAge());
  print("Country: " + await fetchCountry());

  Duration delayTime = Duration(seconds: 3);
  Stream<int> stream = Stream<int>.periodic(delayTime, makeNumber);

  stream.listen((num) {
    if (num % 3 == 0) print(num);
  });
}

Future<String> fetchName() {
  return Future.delayed(Duration(seconds: 3), () => 'Le Cong Tuan');
}

Future<String> fetchAge() {
  return Future.delayed(Duration(seconds: 5), () => '22');
}

Future<String> fetchCountry() {
  return Future.delayed(Duration(seconds: 2), () => 'Ninh Thuan');
}

int makeNumber(int startNum) => (startNum + 1);
