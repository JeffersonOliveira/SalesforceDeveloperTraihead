public with sharing class PizzaQuatroQueijos extends Pizza {
    public PizzaQuatroQueijos() {
        super(3);
    }

    public override List<String> ingredientes() {
        return new List<String> {'Mussarela', 'Provolone', 'Gorgonzola', 'Parmesão'};
    }
}
