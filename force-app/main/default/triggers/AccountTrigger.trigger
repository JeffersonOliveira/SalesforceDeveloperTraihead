trigger AccountTrigger on Account (before insert, before update) {

  if (Trigger.operationType == System.TriggerOperation.BEFORE_INSERT) {
      AccountTriggerHandler.onBeforeInsert(Trigger.new, Trigger.newMap);

  } else if (Trigger.operationType == System.TriggerOperation.BEFORE_UPDATE) {
    AccountTriggerHandler.onBeforeUpdate(Trigger.new, Trigger.oldMap);

  }

}

/**
 * 1. O Objetivo é tirar a lógica da trigger;
 * 2. Separar a lógica;
 * 3. Separar as responsabilidades
 * Trigger 
 *    -> TriggerHandler
 *         onBeforeInsert()
 *         onBeforeUpdate()
 *             -> Helper   ( )
 */