public with sharing class ContactUtility {
    public static void viewContacts() {
        List<Contact> listOfContacts = [SELECT FirstName, LastName FROM Contact LIMIT 6];
        for (Contact con : listOfContacts) {
            String fullName = 'Primeiro Nome: '+con.FirstName+', Último Nome: '+con.LastName;
            System.debug(fullName);
        }

        // Meus testes e em cima da atividade
        System.debug('Lista com dados recuperados via SOQL:::'+listOfContacts);
        List<String> listOfnomeCompleto = new List<String>();
        Integer i=0;
        for(Contact con : listOfContacts) {
            System.debug('Início do Loop:::::::');
            System.debug('Print puro:::'+con.FirstName+' '+con.LastName);
            listOfnomeCompleto.add(con.FirstName+' '+con.LastName);
            System.debug(':::::Dentro do for - Lista Incremental::: '+ listOfnomeCompleto );
            System.debug(':::::Dentro do for com indice::: ['+i+'] '+ listOfnomeCompleto[i] );
            i++;
            System.debug('Fim do Loop::::::::::::::::::::::');
        }
        System.debug(':::::Lista do nomeCompleto depois do for::: '+listOfnomeCompleto);


        i=0;
        for(Contact con : listOfContacts) {
            System.debug(':::::Dentro do for com indice::: ['+i+'] '+ listOfnomeCompleto[i] );
            i++;
        }
    }
}

/*
ContactUtility.viewContacts();
*/