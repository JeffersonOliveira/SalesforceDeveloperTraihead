/*
Requisito: Quando for inserida uma conta iremos validar o campo de telefone verificando se ele possui 11 digitos.
Se estiver vazio enviar uma menagem que está vazio e se não tiver 11 digito o usuário vai ser informado.
*/
trigger AccountTrigger on Account (before insert) {

  if (Trigger.operationType == System.TriggerOperation.BEFORE_INSERT) {
    
      AccountTriggerHandler.onBeforeInsert(Trigger.new, Trigger.newMap);
  }

}


/*
1. O Objetivo é tirar a lógica da trigger;
2. Separar a lógica;
3. Separar as responsabilidades
Trigger 
   -> TriggerHandler
        onBeforeInsert()
        onBeforeUpdate()
            -> Helper   ( )
*/
