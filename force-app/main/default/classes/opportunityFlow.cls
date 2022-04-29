public with sharing class opportunityFlow {
    @InvocableMethod(label='Opportunity Flow' description='Run opportunity flow by Apex')
    public static void execute(List<Opportunity> records) {
        //Business Rules
        System.debug(records);

    }
}
