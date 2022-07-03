public with sharing class PropertyUtility {

    public static void newListedProperties() {

        List<Property__c> newPropList = [SELECT Name, Broker__r.Email__c, Days_On_Market__c FROM Property__c WHERE Date_listed__c = LAST_N_DAYS:30 ORDER BY Days_On_Market__c DESC];
        /* We also can use the part of expression above to make the query:
        ...WHERE Days_On_Market__c <= 30
        */

        for (Property__c propertyTemp : newPropList) {
            String propEmail = propertyTemp.Name+' : '+propertyTemp.Broker__r.Email__c;
            System.debug(propEmail);
        }
    }
}