public class AccountControllerExtension {

    public List<Contact> listContact {get; set;}// Cria propriedade p/ usar a variável de classe
    List<Contact> listContactToDelete;
    public Account account {set;get;}

    public AccountControllerExtension(ApexPages.StandardController standardController) {
        this.account = standardController.getRecord() == null ? new Account() : (Account) standardController.getRecord();
        this.listContact = new List<Contact>();
        this.listContactToDelete = new List<Contact>();

        if (this.account.Id <> null) {
            this.listContact = [SELECT Id, FirstName, LastName, Email FROM Contact Where AccountId =:this.account.id];
        }
    }

    public PageReference addContact() {
        this.listContact.add(new Contact());
        return null; // O null faz com que ele atualize a mesma página. Poderíamos passar uma outra página( outra PageReference) e assim iríamos para outra página.
    }

    public PageReference deleteContact() {

        String index = ApexPages.currentPage().getParameters().get('index');

        Contact con = this.listContact.remove(Integer.valueOf(index));

        if(con.Id != null) {
            listContactToDelete.add(con);
        }
        return null;
    }

    public PageReference saveAccount() {
        upsert account;
        for (Contact contact : this.listContact) {
            contact.accountId = account.Id;
        }
        upsert this.listContact;

        if (!listContactToDelete.isEmpty()) {
            delete this.listContactToDelete;
        }

        ApexPages.StandardController controller = new ApexPages.StandardController(account);
        return controller.view();

    }
}
