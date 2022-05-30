@IsTest
public class AccountTriggerTest {
    
    @IsTest
    static void testAccountBeforeInsert(){

        Account acc01 = new Account(Name='Acc 01', Phone=null);        
        Account acc02 = new Account(Name='Acc 02', Phone='1111111111');        
        Account acc03 = new Account(Name='Acc 03', Phone='11111111111');
        
        List<Account> accountsToInsert = new List<Account>{acc01,acc02,acc03};
        
        Test.startTest();
            Database.SaveResult[]  insertResults = Database.insert(accountsToInsert, false);
        Test.stopTest();

        Database.SaveResult acc01InsertResult = insertResults[0];
        Database.SaveResult acc02InsertResult = insertResults[1];
        Database.SaveResult acc03InsertResult = insertResults[2];
        
        System.assert(!acc01InsertResult.isSuccess() && !acc02InsertResult.isSuccess(),'Verifica se todas as falhas ocorreriam.');
        System.assert(acc01InsertResult.getErrors()[0].getMessage() == 'Por favor informar o telefone.','Error: Informar telefone');
        System.assert(acc02InsertResult.getErrors()[0].getMessage() == 'Por favor informar o telefone com DDD.','Error: telefone incompleto');
        
        System.assert(acc03InsertResult.isSuccess(),'Telefone inválido');
        
        // Recuperando para verificar formatação
        Account acc03AfterInsert = [SELECT Phone FROM Account WHERE Id =: acc03InsertResult.getId()];
        System.assert(acc03AfterInsert.Phone == '(11) 11111-1111');
    }

}
