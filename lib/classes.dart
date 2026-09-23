class BankAccount {
  String holder;
  double balance;

  // Constructor
  BankAccount(this.holder, this.balance) {
    if (balance < 0) {
      print(
        "Warning: Opening balance cannot be negative. Setting balance to 0.0.",
      );
      this.balance = 0.0;
    }
    print("$holder's account is opened with an opening balance of \$$balance");
  }

  // Method to deposit money with input validation
  void deposit(double amount) {
    if (amount <= 0) {
      print(
        "Invalid deposit amount: \$$amount. Amount must be greater than zero.",
      );
      return;
    }
    balance += amount;
    print("Successfully deposited: \$$amount");
  }

  // Method to withdraw money with input validation
  void withdraw(double amount) {
    if (amount <= 0) {
      print(
        "Invalid withdrawal amount: \$$amount. Amount must be greater than zero.",
      );
      return;
    }
    if (amount > balance) {
      print(
        "Transaction failed: Insufficient balance. Attempted to withdraw \$$amount, but balance is \$$balance.",
      );
      return;
    }
    balance -= amount;
    print("Successfully withdrew: \$$amount");
  }

  // Method to check balance
  void checkBalance() {
    print("Current Balance: \$$balance");
  }
}

void main() {
  BankAccount a01 = BankAccount("Abdul Rahman", 50000.0);

  a01.checkBalance();

  // Valid transactions
  a01.withdraw(400);
  a01.deposit(5003240);

  // Invalid input tests
  print("\n--- Testing Invalid Inputs ---");
  a01.deposit(-500); 
  a01.withdraw(-100); 
  a01.withdraw(0); 
  a01.withdraw(99999999); 

  print("\n--- Final Status ---");
  a01.checkBalance();
}
