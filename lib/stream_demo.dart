Stream<int> counter() {
  // Returns 0, 1, 2, 3... every second
  return Stream.periodic(Duration(seconds: 1), (i) => i);
}

void main() {
  var subscription = counter().listen((value) {
    print(value);
  });

  Future.delayed(Duration(seconds: 5), () {
    print('Canceling stream subscription...');    
    subscription.cancel();
  });
}
