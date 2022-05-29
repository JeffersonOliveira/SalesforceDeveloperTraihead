@IsTest
public class ViewAccountDetailControllerTest {
    
    @TestSetup
    static void makeData(){
        Account account = new Account(Name='Acc Test', Phone='11987654123', Site='www.teste.com.br');
        insert account;

        Contact contact = new Contact(LastName='Contact Test',Email='contact@test.com', AccountId=account.id);
        insert contact;
    }

    @IsTest
    static void testLoadAccountContacts(){

        Account acc = [SELECT Id FROM Account Limit 1];
        ApexPages.StandardController standardController = new ApexPages.StandardController(acc);
        
        Test.startTest();

            ViewAccountDetailController controller = new ViewAccountDetailController(standardController);

            System.assert(controller.accountId != null);
            System.assert(!controller.listContact.isEmpty());

        Test.stopTest();
        
    }

    @IsTest
    static void testAddNewContact(){

        Account acc = [SELECT Id FROM Account Limit 1];
        ApexPages.StandardController standardController = new ApexPages.StandardController(acc);
        
        Test.startTest();
            ViewAccountDetailController controller = new ViewAccountDetailController(standardController);
            controller.editContacts();
            System.assert(controller.isEditMode,'To add new contact, edit mode must be true');

            controller.newContact();
            Integer lastIndex = controller.listContact.size() - 1;
            controller.listContact[lastIndex].LastName = 'New Test Contact';
            controller.listContact[lastIndex].Email = 'new_contact@test.com';
            controller.saveContacts();

            List<Contact> newContactList = [SELECT Id FROM Contact WHERE AccountId =: acc.id and Email = 'new_contact@test.com'];
            System.assert(!newContactList.isEmpty());

        Test.stopTest();
        
    }

    @IsTest
    static void testDeleteContact(){

        Account acc = [SELECT Id FROM Account Limit 1];
        ApexPages.StandardController standardController = new ApexPages.StandardController(acc);
        PageReference viewDetailPage = Page.ViewAccountDetail;
        
        Test.startTest();
            ViewAccountDetailController controller = new ViewAccountDetailController(standardController);
            
            viewDetailPage.getParameters().put('index','0');
            Test.setCurrentPage(viewDetailPage);

            controller.deleteContact();

            List<Contact> contactList = [SELECT Id FROM Contact WHERE AccountId =: acc.id and Email = 'contact@test.com'];

            System.assert(contactList.isEmpty());

        Test.stopTest();
        
    }

}