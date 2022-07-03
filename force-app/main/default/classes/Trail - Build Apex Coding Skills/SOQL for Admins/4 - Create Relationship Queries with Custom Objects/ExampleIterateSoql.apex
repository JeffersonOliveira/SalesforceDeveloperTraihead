/* Example Looping(iterate) Parent To Child Soql Response Using For */

for (Broker__c brokerTemp : [Select Name, (SELECT Address__c, Price__c FROM Properties__r)  FROM Broker__c]) {
  System.debug('Broker Name:: '+brokerTemp.Name);
  System.debug('Properties Information: '+brokerTemp.Properties__r);
  Integer index = 1;
  for (Property__c propertyTemp : brokerTemp.Properties__r) {
    System.debug('::::::: ' +index+' - Address: '+propertyTemp.Address__c+' : Price: '+propertyTemp.Price__c);
    index++;
  }
}