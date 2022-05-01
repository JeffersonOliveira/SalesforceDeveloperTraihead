public class AccountTriggerHelper {

    public static void formatPhone(Account account) {

        String areaCode = account.Phone.substring(0, 2);
        String firstPart = account.Phone.substring(2, 7);
        String secondPart = account.Phone.substring(7);

        account.phone = String.format('({0}) {1}-{2}', new List<Object>{areaCode, firstPart, secondPart});

    }

    public static void CloneBillingAddToShippingAdd(Account account) {
        account.ShippingStreet = account.BillingStreet;
        account.ShippingCity = account.BillingCity;
        account.ShippingState = account.BillingState;
        account.ShippingCountry = account.BillingCountry;
        account.ShippingPostalCode = account.BillingPostalCode;

    }
}
