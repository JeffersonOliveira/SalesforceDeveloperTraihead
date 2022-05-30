@IsTest
public with sharing class CarroTest {

    @IsTest
    public static void carroTest() {
        Carro carroAzul = new Carro('Azul','SUV');
        System.debug(carroAzul.Cor);
        System.debug(carroAzul.getTipCarroceria());

    }

}
