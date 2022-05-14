public class AccountControllerExtension {

    public List<Contact> listContact {get; set;}// Precisamos criar uma propriedade para utilizar a variável mesmo que ela seja publica
    public Account account {set;get;}

    public AccountControllerExtension(ApexPages.StandardController standardController) {
        this.listContact = new List<Contact>();
        this.account = new Account();
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
        for (Contact contact : listContact) {
            contact.accountId = account.Id;
        }
        insert listContact;

        ApexPages.StandardController controller = new ApexPages.StandardController(account);
        return controller.view();

    }
}
