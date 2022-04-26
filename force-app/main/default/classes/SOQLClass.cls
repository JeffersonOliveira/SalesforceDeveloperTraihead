public with sharing class SOQLClass {

    public soqlClass() {
        [SELECT Id, Name, Type, BillingState 
         FROM Account 
         WHERE Type IN ('Customer - Channel' , 'Customer - Direct')
         ORDER BY Name Desc];
    }
    
}