/* 
/// Challenge:
Use DML to Insert Multiple Records
Create a class and one method that creates a specified number of new accounts and adds them to the database.
Create a public Apex class named AccountHandler
Add a public static method to the class:
Name: insertAccount
Include a parameter for the number of new accounts:
Data type: Integer
Create a list of Account records:
List name: addAccounts
Use a while loop to add N new Accounts to the list, where N is a value that is incremented by 1 during each iteration of the loop:
Name: Acme Inc N
AccountNumber: A000n
Hint: You did something like this when you created three new Tea Factory stores.
Write one DML statement that inserts all the records into the database at one time
Run your insertAccount method 
*/




public class AccountHandler {
    
    public static Account insertNewAccount(String NameAccount) {
        
        try{
        	Account createAccount = new Account(Name=NameAccount);
            
            insert createAccount;
            return createAccount;
            
        }catch(exception e) {
            
            return null;
        }
    }

    public static void insertAccount(Integer numberOfNewAccounts) {
        List<Account> addAccounts = new List<Account>();

        Integer N = 1;
        while (N <= numberOfNewAccounts) {
            System.debug('Counter Value before incrementing '+ N);

            Account acc = new Account();

            acc.Name = 'Acme Inc '+N;
            acc.AccountNumber = 'A000'+N;

            addAccounts.add(acc);
            N++;
            System.debug('Counter value after incrementing '+ N);
        }
        insert addAccounts;
    }
}

//AccountHandler.insertAccount(4);