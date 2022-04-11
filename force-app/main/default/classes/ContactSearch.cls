public class ContactSearch {
    
    public static Contact[] searchForContacts(String lastName,String postalCode) {
        Contact[] Contatos = [SELECT Name 
                                  FROM Contact
                             	  WHERE MailingPostalCode=:PostalCode AND LastName=:lastName];
        
        return contatos;
    }
}