public with sharing class TiposDeDados {
    public TiposDeDados() {
        String euSouUmaString = 'Aqui vai um texto.'; // In the Apex a String must stay between quotation mark instead of double quotation.
        System.debug(euSouUmaString);

        Blob blob_value = Blob.valueOf(euSouUmaString);
        System.debug('blob_value : '+ blob_value);

        Boolean verdadeiroFalso = true;
        verdadeiroFalso = false;
        System.debug(verdadeiroFalso);

        Integer inteiro = 1; // 
        System.debug(inteiro); // 2^63 to (2^63)-1

        Long inteiroLongo = 1545454545;
        System.debug(inteiroLongo);


        Decimal pontoFlutuante = 1.634488578; // 2^63 to (2^63)-1  //Utilizado nativamente pelo salesforce para moeda
        System.debug(pontoFlutuante);

        Double pontoFlutuanteD = 1.9999999; // 2^63 to (2^63)-1
        System.debug(pontoFlutuanteD);

        Blob b = Blob.valueOf('Eu sou um blob');// Se refere a um arquivo binário. é a maneira de trabalhar com arquivos dentro do salesforce.
        System.debug(b);
        System.debug(b.toString());  //para conserguir ver o que tem dentro de um Blob temos que utilizar o método ToString();
                                     // Se esse Blob fosse um arquivo teríamos um Base64 como output.

        Object obj = false; // O Object pode ser qualquer coisa dentro do Salesforce, ele pode ser um objeto, uma classe, um boolean;
                            //Quando não sabemos o tipo de dados que estamos manipulamos podemos utilizar o Object.
        System.debug(obj);
        
        obj = 'sou false';
        System.debug(obj);
        
        Boolean souUmaString = obj instanceof String;// Para verificar qual é o tipo da variável podemos utilizar o instanceof
        System.debug(souUmaString);

        Boolean souUmaStringa = obj instanceof Boolean;// Para verificar qual é o tipo da variável podemos utilizar o instanceof
        System.debug(SouUmaStringa);

        
        // How to attach a pdf to related object account
        String pdfContent = 'This is a test string';
        Account a = new account(name = 'test');
        insert a;
        Attachment attachmentPDF = new Attachment();
        attachmentPdf.parentId = a.id;
        attachmentPdf.name = a.name + '.pdf';
        attachmentPdf.body = blob.toPDF(pdfContent);
        insert attachmentPDF;


        Date d = Date.today();
        System.debug(d); //|USER_DEBUG|[2]|DEBUG|2022-04-29 00:00:00   // Ele imprime como data e hora, mas consideramos somente a data, pois a hora vira zerada.
        Date d2 = d.addDays(7); // Para atualizar a data na variável, precisamos atribuir pq o método addDays retorna a nova data.
        System.debug(d2);
        Date d3 = d.addMonths(7);
        System.debug(d3);
        Date d4 = d.addYears(7);
        System.debug(d4);

        Date dx = Date.today();
        Date dy = Date.today().addDays(-45);
        System.debug(dx.dayOfYear());
        System.debug(dx.daysBetween(dy));
        System.debug(dy.daysBetween(dx));
        System.debug(dy.monthsBetween(dx));

        System.debug(dx.toStartOfMonth());

        Datetime dt = Datetime.now();
        System.debug(dt); // O salesforce sempre salva as datas que o gmt igual a zero, ou seja, sem timezone
        //System.debug(dt.dateGmt(-3));
        System.debug(dt.getTime()); // quantidade de segundos apartir de 1 jan 1970 
        System.debug(dt.time());  // utiliza hora da org
        System.debug(dt.timeGmt()); // Utiliza hora zero
        Time dTime = dt.time();
        System.debug(dTime);

        Time myTime = Time.newInstance(18, 30, 37, 20);
        System.debug(myTime);
        

        /*
        enum Season {WINTER, SPRING, SUMMER, FALL}
        Season mySeason = Season.FALL;
        
        for ( Season s : Season.values()) {
            System.debug(s);
        }

        System.debug(mySeason);
        System.debug(mySeason == Season.WINTER);        
        */


        //Id  // Ele parece uma String, mas não é. Ele é usado quando utiilzamos o Id de um objeto do salesforce.

        Account acc = new Account();
        acc.Name = 'teste';
        insert acc;

        Id aId = acc.Id; // Aqui também podemos utlizar String, mas é recomendável que se utilize sempre o Tipo Id porque ele ainda faz uma validação dos dados que estão sendo utilizados.
        System.debug(aId);

    }


    
    

}
