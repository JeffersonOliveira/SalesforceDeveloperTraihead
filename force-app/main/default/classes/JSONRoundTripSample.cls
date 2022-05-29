public class JSONRoundTripSample {
    
    public class InvoiceStatement {
        Long invoiceNumber;
        Datetime statementDate;
        Decimal totalPrice;

        public InvoiceStatement(Long i, Datetime dt, Decimal price) {
            invoiceNumber = i;
            statementDate = dt;
            totalPrice = price;
        }
    }

    public static void serializeRoundTrip() {
        Datetime dt = Datetime.now();
        System.debug(dt);
        // Create a few invoices.
        InvoiceStatement inv1 = new InvoiceStatement(1,Datetime.valueOf(dt),1000);
        System.debug(inv1);
        InvoiceStatement inv2 = new InvoiceStatement(2,Datetime.valueOf(dt),500);
        System.debug(inv2);
        // Add the invoices to a list:
        //List<InvoiceStatement> invList = new List<InvoiceStatement>{inv1,inv2};
        List<InvoiceStatement> invoices = new List<InvoiceStatement>();
        System.debug(invoices);
        invoices.add(inv1);
        invoices.add(inv2);
        System.debug(invoices);

        System.debug('Running into invoices list!!!');
        Integer i = 0;
        for (InvoiceStatement inv : invoices) {
            System.debug(':: Invoice n° : '+invoices[i].invoiceNumber);            
            System.debug(':::::'+inv.invoiceNumber);            
            System.debug(':::::'+inv.statementDate);            
            System.debug(':::::'+inv.totalPrice);     
            i++;       
        }

        //Serialize the list of InvoiceStatement objects.
        String JSONString = JSON.serialize(invoices);
        System.debug('Serialized list of invoices into JSON format:'+ JSONString);


        //Deserialize the list of invoices from the JSON string:
        List<InvoiceStatement> deserializedInvoices = (List<InvoiceStatement>) JSON.deserializeStrict(JSONString, List<InvoiceStatement>.class);
        System.debug(deserializedInvoices);
        System.assertEquals(invoices.size(), deserializedInvoices.size());

        Integer j = 0;
        for (InvoiceStatement deserializedInvoice : deserializedInvoices) {
            System.debug('Deserialized: '+ deserializedInvoice.invoiceNumber +', ' + 
                                           deserializedInvoice.statementDate.formatGmt('dd/MM/yy HH:mm')+', '+
                                           deserializedInvoice.totalPrice);
                                           
            System.debug('Original: '+ invoices[j].invoiceNumber+ ', '+
                                       invoices[j].statementDate+ ', '+
                                       invoices[j].totalPrice);
            j++;            
        }

    }
}
