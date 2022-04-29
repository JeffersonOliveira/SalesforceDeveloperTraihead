public with sharing class Collection {

    public static void collection(String param) {
        List<String> myList = new List<String>();
        
        //myList.add(param);
    
        myList.add('Parametro do tipo da minha Lista');
        myList.add(0, 'Primeira posição!'); // O método de list com 2 parametros é responsável por adicionar um item na lista na posição especificada no primeiro parâmetro passado.  //Trabalhando com index
        System.debug(myList+' E essa lista tem o tamanho de '+myList.size());

        // Imprimindo uma lista: 
        for (String sd : myList) {  
            System.debug(sd);
        }
        
        System.debug(myList.contains('Primeira posição!'));        // Verificando se um item está dentro de uma lista

        if (!myList.isEmpty()) {
            System.debug('Sua lista não está vazia!');
        }

        System.debug(myList.contains('Primeira posição!'));
        myList.remove(0);
        System.debug(myList.contains('Primeira posição!'));

        System.debug(myList.size());

        for (Integer i = 0; i < myList.size(); i++) {
            System.debug(myList[i]);
        }

        Integer i=0;
        while (i < myList.size()) {
            System.debug(myList[i]);
            i++;
        }

    }

    public static void mySetList(){
        Set<String> mySet = new Set<String>();

        mySet.add('Banana');
        mySet.add('Maça');
        mySet.add('Banana');
        mySet.add('Maça');

        System.debug(mySet);
        System.debug(mySet.contains('Banana'));
        System.debug(mySet.size());
        System.debug(mySet.isEmpty());
    }

    public static void myMap() {
        Map<String, String> myMap = new Map<String, String>();
        System.debug(myMap.isEmpty());
        System.debug(myMap.size());


        //Add a value to Map:
        myMap.put('chave', 'valor'); 
        myMap.put('chave2', 'valor'); // O valor pode ser repetir, mas a chave não.
        System.debug(myMap);

        // Para verificar se já existe um valor em um mapa
        if (myMap.containsKey('chave')) {
            System.debug('Chave já existe no myMap.');
        }

        // Pegar todas as chaves ou todos valores

        System.debug(myMap.keySet()); // lista de chaves do map -> muito utilizado para o Id do Objeto
        System.debug(myMap.values()); // lista de valores do map --> muito utilizado para os valores .

        myMap.remove('chave');
        System.debug(myMap);

    }

}


/*
Collection.Collection('Testando.');
*/