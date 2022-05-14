public class AccountControllerExtension {

    public List<Contact> listContact {get; set;}// Precisamos criar uma propriedade para utilizar a variável mesmo que ela seja publica

    public AccountControllerExtension(ApexPages.StandardController standardController) {
        this.listContact = new List<Contact>();
    }

    public PageReference addContact() {
        this.listContact.add(new Contact());
        
        return null; // O null faz com que ele atualize a mesma página. Poderíamos passar uma outra página( outra PageReference) e assim iríamos para outra página.
    }
}
