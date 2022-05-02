public class NewAccounts {
    public static void sObjectInsert() {
        Account store = new Account();
        store.Name = 'The Tea Factory';
        store.AccountNumber = '356288';
        store.Phone = '555-0158';
        insert store;
    }
}
