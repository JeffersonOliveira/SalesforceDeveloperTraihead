public abstract with sharing class Pizza {
    @TestVisible
    private Integer QuantidadeDeSabores{get;set;}

    public Pizza(Integer quantidadeDeSabores) {
        this.QuantidadeDeSabores = quantidadeDeSabores;
    }

    public abstract List<String> ingredientes(); // Abstract method that will be override by a method in a Child class.

    public void preparaPizza() {
        for(String ingrediente : ingredientes()) {
            System.debug(ingrediente);
        }
    }
}
