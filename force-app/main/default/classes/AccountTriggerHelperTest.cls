@IsTest
public  class AccountTriggerHelperTest {
    
    @IsTest
    static void formatPhoneTest(){
        
        Account acc = new Account(Name='Acc Test',Phone='11987654123');
        
        Test.startTest();
            AccountTriggerHelper.formatPhone(acc);
            System.assertEquals('(11) 98765-4123', acc.phone,'Output phone not right.');
        Test.stopTest();
    }
    
    @IsTest
    static void assignBillingAddressToShippingAddressTest(){
        Account acc = new Account(Name='Acc Test', Phone='11987654123', BillingStreet='Rua dos Servidores' , BillingCity='Rio de Janeiro', BillingState='RJ', BillingCountry='Brasil', BillingPostalCode='26276000');


        Test.startTest();
            AccountTriggerHelper.assignBillingAddressToShippingAddress(acc);

            System.assertEquals('Rua dos Servidores', acc.ShippingStreet, 'Output ShippingStreet wasn\'t match or updated correctly.');
            System.assertEquals('Rio de Janeiro', acc.ShippingCity, 'Output ShippingCity wasn\'t match or updated correctly.');
            System.assertEquals('RJ', acc.ShippingState, 'Output ShippingState wasn\'t match or updated correctly.');
            System.assertEquals('Brasil', acc.ShippingCountry, 'Output ShippingCountry wasn\'t match or updated correctly.');
            System.assertEquals('26276000', acc.ShippingPostalCode, 'Output ShippingPostalCode wasn\'t match or updated correctly.');
        Test.stopTest();
    }

}
