Future<String> prepareFood() async {
  await Future.delayed(Duration(seconds: 3));
  return "Food is Ready";
}

Future<String> deliveryFood() async {
  print("Delivery Started");
  await Future.delayed(Duration(seconds: 5));
  return "Food Deliverd";
}

Future<void> main() async {
  print("Order Placed");
  String food = await prepareFood();
  print(food);
  String del = await deliveryFood();
  print(del);
  
}
