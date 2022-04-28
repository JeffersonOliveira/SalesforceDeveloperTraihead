public with sharing class ConceitosApex {
    private String conceito = 'Conceito de Apex';

    public transient String Oculto;  // O Transient mantem o valor da propriedade dentro da classe.
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

    public void testandoMetodo() {
        try {
            Integer x = 1234 / 1;
        } catch (System.MathException ex) {
            System.debug(ex);
        } finally {
            System.debug('Cheguei aqui.');
        }
        
    }

}
/*
ConceitosApex c = new ConceitosApex(); c.testandoMetodo();
*/