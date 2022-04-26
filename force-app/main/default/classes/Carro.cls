public with sharing class Carro {
    public Integer CapacidadeDoTanque {get;set;} //indica que é uma propriedade
    public Integer TamanhoDaRoda {get;set;}
    private String TipoDeCarroceria {get;set;}
    public Decimal PontencialDoMotor {get;set;}
    public String Cor {get;set;}

    public Carro(String cor, String tipoDeCarroceria) {
        this.Cor = cor;
        this.TipoDeCarroceria = tipoDeCarroceria;
    }

    public String getTipCarroceria(){
        return this.TipoDeCarroceria;
    }
}
