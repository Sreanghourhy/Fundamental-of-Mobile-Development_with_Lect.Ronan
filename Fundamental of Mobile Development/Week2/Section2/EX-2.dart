class BankAccount {
  int account_Id;
  String account_name;
  double account_balance = 0;

  BankAccount(this.account_Id, this.account_name, this.account_balance);

  // Getter for balance
  double get balance => account_balance;

  // Withdraw method
  void withdraw(double amount) {
    if (amount <= account_balance) {
      account_balance -= amount;
      print('Deducted $amount from the balance. Current balance: $account_balance');
    } else {
      throw Exception('Insufficient balance for withdrawal!');
    }
  }

  // Credit method
  void credit(double amount) {
    account_balance += amount;
    print('Credit successful. New balance: $account_balance');
  }
}

class Bank {
  String bankName;
  List<BankAccount> accounts = [];

  Bank(this.bankName);

  // Create a new bank account
  BankAccount createAccount(int account_Id, String accountOwner) {
    // Check if the account with the same ID exists
    for (var account in accounts) {
      if (account.account_Id == account_Id) {
        throw Exception('Account with ID $account_Id already exists!');
      }
    }

    BankAccount newAccount = BankAccount(account_Id, accountOwner, 0);
    accounts.add(newAccount);
    print("Account created for $accountOwner with ID $account_Id.");
    return newAccount;
  }

  // Print all bank accounts
  void printAccounts() {
    for (var account in accounts) {
      print('Account ID: ${account.account_Id}, Account Holder: ${account.account_name}, Balance: ${account.balance}');
    }
  }
}

void main() {
  // Creating a new bank
  Bank myBank = Bank("CADT Bank");

  // Creating a new account for Ronan
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  // Print initial balance
  print("Balance: ${ronanAccount.balance}"); // Balance: $0

  // Credit and withdraw operations
  ronanAccount.credit(100); // Credit $100
  print("Balance: ${ronanAccount.balance}"); // Balance: $100

  ronanAccount.withdraw(50); // Withdraw $50
  print("Balance: ${ronanAccount.balance}"); // Balance: $50

  // Attempt to withdraw more than the balance
  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  // Attempt to create an account with the same ID
  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }

  // Print all accounts in the bank
  myBank.printAccounts();
}
