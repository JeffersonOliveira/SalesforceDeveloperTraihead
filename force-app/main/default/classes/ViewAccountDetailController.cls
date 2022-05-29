public with sharing class ViewAccountDetailController {

    @TestVisible
    Id accountId;
    public List<Contact> listContact {get;set;}
    public Boolean isEditMode {get;set;}

    public ViewAccountDetailController(Apexpages.StandardController standardController) {
        this.accountId = standardController.getId();
        this.listContact = getContacts();
        this.isEditMode = false;
    }

    public List<Contact> getContacts(){
        return [SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId =:this.accountId];
    }

    public PageReference newContact() {
        this.listContact.add(new Contact(AccountId = this.accountId));
        return null;
    }

    public PageReference deleteContact() {
        String index = ApexPages.currentPage().getParameters().get('index');

        Contact con = this.listContact.remove(Integer.valueOf(index));

        if(con.Id != null) {
            delete con;
        }
    
        return null;
    }

    public PageReference editContacts() {
        this.isEditMode = true;
        return null;
    }

    public PageReference saveContacts() {
        
        upsert this.listContact;
        this.isEditMode = false;

        return null;
    }


}
