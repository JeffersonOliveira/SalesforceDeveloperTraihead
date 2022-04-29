/*
Requisito: Quando for inserida uma conta iremos validar o campo de telefone verificando se ele possui 11 digitos.
Se estiver vazio enviar uma menagem que está vazio e se não tiver 11 digito o usuário vai ser informado.
*/
trigger AccountTrigger on Account (before insert) {

  List<Account> newAccountList = Trigger.new;
  
  for (Account newAccount : newAccountList) {
      if (newAccount.Phone == null) {
        newAccount.addError('Por favor informar o telefone.');
        
      } else if (newAccount.Phone.length() < 11 ) {
        newAccount.addError('Por favor informar o telefone com DDD.');
      }

  }
}

