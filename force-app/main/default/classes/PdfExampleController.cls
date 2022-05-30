public with sharing class PdfExampleController {

    public List<Account> accList{get;set;}
    //public Date datahoje{get;set;}

    public PdfExampleController (){
        accList = [SELECT id,name,type,accountnumber,annualrevenue,Rating 
                    FROM account WHERE Rating <> ''];
    }
}