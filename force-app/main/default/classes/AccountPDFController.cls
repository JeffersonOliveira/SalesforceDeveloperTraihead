public class AccountPDFController {
    
    Id accountId;

    public AccountPDFController() {
        this.accountId = ApexPages.currentPage().getParameters().get('Id');
    }

    public Account getCurrentAccount() {
        return [SELECT Name, Phone, Site FROM Account WHERE Id =: this.accountId];
    }

    public List<String> getContactsInformation() {
        List<String> contactsInformation = new List<String>();
        String InfoTemplate = 'Name: {0} {1} | Email: {2}';
        List<Contact> queryContacts = [SELECT FirstName, LastName, Email FROM Contact WHERE accountId=: this.accountId ];
        for (Contact con : queryContacts) {
            contactsInformation.add(String.format(InfoTemplate, new List<Object>{con.FirstName,con.LastName, con.Email} ) );
        }
        return contactsInformation;
    }
}
