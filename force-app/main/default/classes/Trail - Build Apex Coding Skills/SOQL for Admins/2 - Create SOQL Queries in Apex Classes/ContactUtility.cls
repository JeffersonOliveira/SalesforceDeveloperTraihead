public with sharing class ContactUtility {
    public static void viewContacts() {
        List<Contact> listOfContacts = [SELECT FirstName, LastName FROM Contact LIMIT 6];
        for (Contact con : listOfContacts) {
            String fullName = 'Primeiro Nome: '+con.FirstName+', Último Nome: '+con.LastName;
        }

        // Meus testes e em cima da atividade
        /* System.debug('Lista com dados recuperados via SOQL:::'+listOfContacts); */
        List<String> listOfnomeCompleto = new List<String>();
        for(Contact con : listOfContacts) {
            listOfnomeCompleto.add(con.FirstName+' '+con.LastName);
        }
        System.debug(':::::Listagem Nomes Completos::: '+listOfnomeCompleto);


        if(listOfContacts.size() > 0){
            Integer i=0;
            for(Contact con : listOfContacts) {
                System.debug(':::::Posição['+i+']: '+ listOfnomeCompleto[i] );
                i++;
            }
        }
    }
}