Future<String> prepareFood() {
  return Future.delayed(Duration(seconds: 5), () {
    return "DATABASE UPDATED, ORDER PLACED!";
  });
}

void main() {
  print("Customer is buying a Pizza");
  prepareFood().then((food) {
    print(food);
    print("Delivery is Out!");
  });
  print("User is Browsing the page");
}
