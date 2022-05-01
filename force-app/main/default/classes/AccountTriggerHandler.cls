public class AccountTriggerHandler {

    public static void onBeforeInsert(List<Account> newAccountList, Map<Id,Account> newAccountMap) {
        for (Account newAccount : newAccountList) {
            //Validating the phone and formating
            if (newAccount.Phone == null) {
                newAccount.addError('Por favor informar o telefone.');
            
            } else if (newAccount.Phone.length() < 11 ) {
                newAccount.addError('Por favor informar o telefone com DDD.');
                
            } else {
                AccountTriggerHelper.formatPhone(newAccount);
            }

            // Verify if checkbox is marked to clone Billing to Shipping Address
            if (newAccount.Match_Billing_Address__c  == True) {
                AccountTriggerHelper.CloneBillingAddToShippingAdd(newAccount);
            }
        }
    }

    public static void onBeforeUpdate(List<Account> newAccountList, Map<Id,Account> oldAccountMap) {
        for (Account newAccount : newAccountList) {
            // Verify if checkbox is marked to clone Billing to Shipping Address
            if (newAccount.Match_Billing_Address__c  == True) {
                AccountTriggerHelper.CloneBillingAddToShippingAdd(newAccount);
            }
        }
    }
}

/**
 * Requisito: Quando for inserida uma conta iremos validar o campo de telefone verificando se ele possui 11 digitos.
 * Se estiver vazio enviar uma menagem que está vazio e se não tiver 11 digito o usuário vai ser informado. 
 * 
 * 
 */
