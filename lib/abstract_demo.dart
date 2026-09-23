abstract class Payment {
  void pay(double amount);
}

class UPI extends Payment {
  @override
  void pay(double amount) {
    print("$amount Paid Using UPI");
  }
}

class Cards extends Payment {
  @override
  void pay(double amount) {
    print("$amount Paid Using Cards");
  }
}

void main() {
  Payment p = UPI();
  p.pay(500);

  Payment c = Cards();
  c.pay(1000);
}
