package SDP.SingleResponsibility;

public class Bank {
        //All the class here have different functionality associated to it, representing SRP

        class UserAccountManager {

            void createUserAccount(String name, int accountNumber) {
                // Create a new user account
            }

            void closeUserAccount(int accountNumber) {
                // Close an existing user account
            }
        }

        class FundsManager {

            void depositFunds(int accountNumber, double amount) {
                // Deposit funds into an account
            }

            void transferFunds(int fromAccountNumber, int toAccountNumber, double amount) {
                // Transfer funds from one account to another
            }

            void checkAccountBalance(int accountNumber) {
                // Get the balance of an account
            }
        }

        class ATMManager {

            void repairATM(int atmId) {
                // Repair an ATM
            }

            void maintainATM(int atmId) {
                // Maintain an ATM
            }
        }

    }
