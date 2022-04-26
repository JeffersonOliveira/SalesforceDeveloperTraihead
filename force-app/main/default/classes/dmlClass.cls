public with sharing class dmlClass {
    public dmlClass() {

        // Criando um save point e entrar no try;
        Account acc = new Account();
        acc.Name = 'Aula Dml2';
        Savepoint sp = Database.setSavepoint();
        
        try {
            insert acc;
        } catch (Exception ex) {
            Database.rollback(sp);
        }
        [SELECT Name FROM Account WHERE Name = 'Aula Dml2']
        
        // Criando um save point e entrar no catch;
        Account acc = new Account();
        acc.Name = 'Será que passa';
        Savepoint sp = Database.setSavepoint();
        
        try {
            insert acc;
            integer i = 1/0;
        } catch (Exception ex) {
            System.debug('Rollback');
            Database.rollback(sp);
        }

        [SELECT Name FROM Account WHERE Name = 'Será que passa']

        Account accUpdate = [SELECT Id, Name FROM Account WHERE Name = 'Aula Dml2'];
        accUpdate.Type = 'aula';
        update accUpdate;

        [SELECT Id, Name, Type FROM Account WHERE Name = 'Aula Dml2'];

        List<Account> accDelete = [SELECT Id, Name FROM Account WHERE Name = 'Aula Dml'];
        delete accDelete;

        [SELECT Id, Name, Type FROM Account WHERE Name = 'Aula Dml2'];


        Account accUpsert = new Account();
        accUpsert.Name = 'UPSERT';
        upsert accUpsert;

        [SELECT Id, Name, Type FROM Account WHERE Name = 'UPSERT'];

        Account accUpsert = [SELECT Id, Name FROM Account WHERE Name = 'UPSERT'];
        accUpsert.Type = 'aula upsert';
        update accUpsert;


    }
}
