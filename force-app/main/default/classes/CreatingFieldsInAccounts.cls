public class CreatingFieldsInAccounts {
    
    public static void CreateNewAccount(){
    	//Account acct = new Account(Name='Acme',Phone='(415)555-1212',NumberOfEmployees=100);   
    	Account acct = new Account();
        acct.Name = 'Acme3';
        acct.Phone = '(415)555-1212';
        acct.NumberOfEmployees = 100;
        System.debug('A new Account created!');
        insert acct;
    }
}