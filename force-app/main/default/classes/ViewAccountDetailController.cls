public with sharing class ViewAccountDetailController {

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

    public PageReference addContact() {
        this.listContact.add(new Contact());
        return null; // O null faz com que ele atualize a mesma página. Poderíamos passar uma outra página( outra PageReference) e assim iríamos para outra página.
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
