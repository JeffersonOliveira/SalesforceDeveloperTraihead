public class AccountPDFController {
    
    Id accountId;

    public AccountPDFController() {
        this.accountId = ApexPages.currentPage().getParameters().get('Id');
    }

    public Account getCurrentAccount() {
        return [SELECT Name, Phone, Site FROM Account WHERE Id =: this.accountId];
    }

    public List<Contact> getContacts() {
        return [SELECT FirstName, LastName, Email FROM Contact WHERE accountId=: this.accountId ];
    }
}
