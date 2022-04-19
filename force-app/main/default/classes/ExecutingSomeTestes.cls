public with sharing class ExecutingSomeTestes {

    public static void gordices() {

        //Declarar uma lista vazia
        List<String> gordices = new List<String>();

        //Imprimir uma lista vazia
        System.debug('Lista de gordices vazia: '+gordices);

        //Adicionar elementos em uma lista:
        gordices.add('bala');
        gordices.add('bananda');
        gordices.add('chocolate');

        //Imprimir uma lista dentro da estrutura de um list.
        System.debug('Lista de gordices preenchida: '+gordices);

        //Imprimir uma lista item a item com for each:
        for ( String gordice : gordices ) {
            System.debug('Gordice - ['+gordices.indexOf(gordice)+']: '+gordice);
        }
        // Imprimir uma lista item a item com for tradicional:
        for ( Integer i=0 ; i < gordices.size() ; i++ ) {
            System.debug('Gordice - ['+i+']: '+gordices[i]);
        }

        //Declarar uma lista com um tamanho definido, esse exemplo utiliza notação de matrizes.
        String[] mantimentos = new String[4];
        System.debug('Lista de mantimentos: '+ mantimentos);
        for ( String mantimento : mantimentos ) {
            System.debug('Lista de mantimentos: '+ mantimento);
        }

        String[] groceries = new String[4];
        System.debug('Initialized groceries: '+ groceries);

        System.debug('Item 0: '+ groceries[0]);


        // Declarar e inicilizar uma lista:
        List<String> Compras = new List<String>{'Tea','Nescau','Manteiga','Sugar'};
        System.debug('Compras: '+ Compras);

        //Cria uma lista de acessórios
        List<String> acessorios = new List<String>();

        //Saída desse lista é "null":
        System.debug('Acessórios: '+ acessorios);

        //Usando o add para adicionar elementos na lista:
        acessorios.add('pneu');
        acessorios.add('camara de ar');
        acessorios.add('selim');

        System.debug('Acessários: '+ acessorios);

        // Usando add para adicionar elemento um ponto específico de uma lista
        acessorios.add(2, 'marcha');

        System.debug('Acessários: '+ acessorios);

        //Atenção para comportamentos inesperados para as listas:

        System.debug('Atenção para comportamentos inesperados para as listas:');

        String[] groceries2 = new String[4];
        System.debug('Groceries: ' + groceries2);
        
        groceries2.add('Tea');
        groceries2.add('Sugar');
        System.debug('Added 2 items: ' + groceries2);
        
        groceries2.add(1, 'Honey');
        System.debug('Added Honey in index 1: ' + groceries2);
        
        System.debug('Item 0: ' + groceries2[0]);

    }
}
