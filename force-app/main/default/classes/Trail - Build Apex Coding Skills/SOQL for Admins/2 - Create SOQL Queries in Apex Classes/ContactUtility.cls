public with sharing class ContactUtility {
    public static void viewContacts() {
        List<Contact> listOfContacts = [SELECT FirstName, LastName FROM Contact LIMIT 6];

        List<String> listOfnomeCompleto = new List<String>();
        for (Contact con : listOfContacts) {
            String fullName = 'Primeiro Nome: '+con.FirstName+', Último Nome: '+con.LastName;
            listOfnomeCompleto.add(fullName);
        }
        //Impressão de debugs:
        System.debug(':::::Listagem Nomes Completos::: '+listOfnomeCompleto);
        Integer i=0;
        for (Integer i = 0; i < listOfnomeCompleto.size(); i++) {
            System.debug(':::::Posição['+i+']: '+ listOfnomeCompleto[i] );  
        }

    }
}