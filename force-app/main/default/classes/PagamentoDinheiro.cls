public with sharing class PagamentoDinheiro implements IPagamento{
    public PagamentoDinheiro() {

    }

    public Decimal cobrar(Decimal valorCompra, Decimal valorPago) {
        // Regra de negócio de pagamento
        // Simulação de troco
        if (valorPago > valorCompra) {
            return valorPago - valorCompra;
        } else if (valorPago == valorCompra) {
            return 0;
        } else {
            System.debug('Valor de pagamento insuficiente!');
            return valorPago - valorCompra;
        }
    }
}
