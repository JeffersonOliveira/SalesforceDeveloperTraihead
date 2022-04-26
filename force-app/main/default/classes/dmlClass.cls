public with sharing class dmlClass {
    public dmlClass() {
        Account acc = new Account();
        acc.Name = 'Aula Dml';
        insert acc;

        [SELECT Id, Name FROM Account WHERE Name = 'Aula Dml'];


        
    }
}
