public with sharing class ConceitosApex {
    private String conceito = 'Conceito de Apex';

    public transient String Oculto;  // O Transient mantém o valor da propriedade dentro da classe.
    public String Visivel;

    public ConceitosApex(String conceito) {
        this.conceito = conceito;
    }    

    public ConceitosApex() {
        this('Novo');
    }

    public void NovoConceito(String conceito) {
        String NovoConceito = 'aaaa';
        this.conceito = conceito;

        this.Oculto = 'x';
        this.Visivel = 'y';

    }
    public void showConceito() {
        NovoConceito('Existe o conceito transient.');
        System.debug(Oculto);
        System.debug(this.Oculto);
        System.debug(JSON.serialize(this));
    }

    public void fazerPizza(Object pizza) {
        Boolean isPizza = pizza instanceof Pizza;

        if (!isPizza) {
            throw new PizzaException('Isso não é uma pizza');
        } else {
            ((Pizza)pizza).prepararPizza();
        }
    }

    public void testandoMetodo() {
        Portuguesa pizza = new Portuguesa();
        fazerPizza(pizza);
        
    }

    public class PizzaException extends Exception { }
}
/*
ConceitosApex c = new ConceitosApex(); c.testandoMetodo();
*/