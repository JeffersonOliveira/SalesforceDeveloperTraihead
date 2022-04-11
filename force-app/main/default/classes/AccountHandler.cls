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
}