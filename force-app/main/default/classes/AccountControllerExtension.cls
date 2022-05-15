public class AccountControllerExtension {

    public List<Contact> listContact {get; set;}// Precisamos criar uma propriedade para utilizar a variável mesmo que ela seja publica
    public Account account {set;get;}

    public AccountControllerExtension(ApexPages.StandardController standardController) {
        this.account = standardController.getRecord() == null ? new Account() : (Account) standardController.getRecord();
        this.listContact = new List<Contact>();

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
        this.listContact.remove(Integer.valueOf(index));
        return null;
    }

    public PageReference saveAccount() {
        upsert account;
        for (Contact contact : this.listContact) {
            contact.accountId = account.Id;
        }
        upsert this.listContact;

        ApexPages.StandardController controller = new ApexPages.StandardController(account);
        return controller.view();

    }
}
