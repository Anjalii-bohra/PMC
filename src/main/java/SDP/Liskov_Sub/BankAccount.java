package SDP.Liskov_Sub;

abstract class BankAccount {
    //Liskov Substitution Principle
    //BankAccount here is responsible to manage a single bank account
    //it is an abstract class, then all subclasses object can be used instead of the object of BankAccount
    // as the subclass object can perform all the tasks of superclass


        public void deposit(double amount) {
            // Deposit money into the account
        }

        public void withdraw(double amount) {
            // Withdraw money from the account
        }

        public double balance() {
            // Get the balance of the account
            return 0.0;
        }
    }

    class SavingsAccount extends BankAccount {
        @Override
        public void withdraw(double amount) {
            // Override the withdraw method to only allow withdrawals up to the
            // account's balance
            if (amount > balance()) {
                throw new IllegalStateException("Insufficient funds");
            }
            super.withdraw(amount);
        }
    }

    class CheckingAccount extends BankAccount {
        @Override
        public void withdraw(double amount) {
            // Override the withdraw method to allow overdrafts up to a certain
            // limit
            if (amount > balance()) {
                System.out.println("Withdraw Declined");
            }
            super.withdraw(amount);
        }
    }

    class Person extends BankAccount { }




