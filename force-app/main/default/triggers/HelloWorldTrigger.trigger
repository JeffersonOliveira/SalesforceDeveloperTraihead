trigger HelloWorldTrigger on Account (before insert) {
    System.debug('Descrição das contas abaixo atualizadas:');
    for(Account conta : Trigger.New) {
    	conta.Description = 'New description2';
        System.debug('Conta: '+ conta.Name + ' Teve a descrição atualizada para: ' + conta.Description);    
    }	
}