trigger ExampleTrigger on Contact (after insert, after delete) {
    
    if(Trigger.isInsert) {
        Integer recordCount = Trigger.New.size();
        // Chama um método "SendEmail" que foi criado na classe apex "EmailManager" para reaproveitamento de código.
        EmailManager.sendMail('jeffersonnsoliveira@gmail.com', 'Trailhead Trigger Tutorial',
                              recordCount + ' contact(s) were inserted');
    }
    else if (Trigger.isDelete) {
        //EmailManager.sendMail('jeffersonnsoliveira@gmail.com', 'Contact(s) Deleted',
           //                   recordCount + ' contact(s) were deleted.');
    }
}