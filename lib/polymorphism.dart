class Payment {
  void pay() {
    print("Paying...");
  }
}

class UPI extends Payment{
  void pay(){
    print("Paid Using UPI");
  }
}

void main() {
  Payment p = UPI();
  p.pay();
}
