public class EmailManager2 {
    
    private String subject;
    private String body;
    private String address;
    
    // A função de qualquer construtor é inicializar os dados de um objeto;
    public EmailManager2(String address, String subject, String body) {
		this.subject = subject;
        this.address = address;
        this.body = body;
    }
    // Método que está em "contexto de instância", então é necessário instanciar a classe para acessar o método.
    public void sendMail() {
        //Create an email message object
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        // Pass this email message to the built-in sendEmail method of the Messaging class
        Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
        //Call a helper method to inspect the returned results
        inspectResults(results);
    }
    
    /*
    public static void sendMail(String address, String subject, String body) {
        
    }
*/
    private static Boolean inspectResults(Messaging.SendEmailResult[] results)  {
    	Boolean sendResult = true;
        /* sendEmail returns an array of result objects.Iterate through the list to inspect results. 
         * In this class, the methods send only one email, so we should have only one result. */
        
        for(Messaging.SendEmailResult res : results) {
            if (res.isSuccess()) {
                System.debug('Email sent successfully');
            }
            else {
                sendResult = false;
                System.debug('The following errors occurred: ' + res.getErrors());
            }
        } 
        return sendResult;                                 
    }
}

/*
	EmailManager2.sendMail('jeffersonnsoliveira@gmail.com', 'Trailhead Tutorial', '123 body');
*/