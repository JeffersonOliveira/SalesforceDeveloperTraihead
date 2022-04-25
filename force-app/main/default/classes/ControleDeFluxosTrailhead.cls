public with sharing class ControleDeFluxosTrailhead {
    public static void verifynumerOfTeaCups() {

        Integer numberOfTeaCups = 2;
        Boolean result1 = numberOfTeaCups == 3;  //false
        Boolean result2 = numberOfTeaCups == 2; //true

        List<Boolean> results = new List<Boolean>{result1,result2};
            
        System.debug(results);

        numberOfTeaCups = 2;
        Boolean numberOfTeaCupsMaiorque3 = numberOfTeaCups > 3; // 2 > 3 = false

        System.debug('numberOfTeaCups > 3? '+ numberOfTeaCupsMaiorque3);

    }

    public static void verifyWaterLevel(String waterLevel) {
        // Three status possibilities: 'full', 'half' or 'empty';

        if (waterLevel == 'empty' || waterLevel == 'half') {
            System.debug('Fill the tea Kettle.');
            waterLevel = 'full';   
        } else {
            System.debug('The tea kettle already was full');
        }

        //Calling the method with apex anonymous.
        //ControleDeFluxosTrailhead.verifyWaterLevel('full');
    }

    public static void verifyWaterLevelWithSwitchMultipleValues(String waterLevel) {

        switch on waterLevel {
            when  'empty','half' {
                System.debug('Fill the tea kettle');
            }
            when  'full' {
                System.debug('The tea kettle already is full');
            }
            when else {
                System.debug('Error!');
                
            }
        }
        /*
        ControleDeFluxosTrailhead.verifyWaterLevelWithSwitchMultipleValues('empty');
        ControleDeFluxosTrailhead.verifyWaterLevelWithSwitchMultipleValues('half');
        ControleDeFluxosTrailhead.verifyWaterLevelWithSwitchMultipleValues('full');
        */
    }

    
}
