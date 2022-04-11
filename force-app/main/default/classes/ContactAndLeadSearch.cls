public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String searchText) {
        
        List<List<SObject>> searchListContactAndLead = [FIND :searchText IN ALL FIELDS 
                                                        RETURNING 
                                                        Contact(FirstName, LastName),
                                                        Lead(FirstName,LastName)];
        
        // Separating the lists:
        List<Contact> searchContacts = (List<Contact>)searchListContactAndLead[0];
        List<Lead> searchLeads = (List<Lead>)searchListContactAndLead[1];
        
        System.Debug('Found the following  Contact list:');
        for ( Contact c : searchContacts) {
            System.debug(c.LastName +', '+ c.FirstName);
        }
        
        System.Debug('Found the following Lead list:');
        for ( Lead l : searchLeads) {
            System.debug(l.LastName +', '+ l.FirstName);
        }
        
        return searchListContactAndLead;
    }
}