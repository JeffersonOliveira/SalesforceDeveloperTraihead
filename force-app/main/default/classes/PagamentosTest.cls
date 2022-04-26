
@IsTest
public class PagamentosTest {
    
    @IsTest
    public static void pagamentoCartaoValorExato() {
        PagamentoCartao pagCartao = new PagamentoCartao();
        Decimal troco = pagCartao.cobrar(150, 150);

        System.assertEquals(0, troco);

    }
    @IsTest
    public static void pagamentoCartaoComTroco() {
        PagamentoCartao pagCartao = new PagamentoCartao();
        Decimal troco = pagCartao.cobrar(100, 150);

        System.assertEquals(50, troco);

    }
    @IsTest
    public static void pagamentoCartaoValorInsuficiente() {
        PagamentoCartao pagCartao = new PagamentoCartao();
        Decimal troco = pagCartao.cobrar(150, 100);

        System.assertEquals(-50, troco);
    }

    @IsTest
    public static void PagamentoDinheiroValorExato() {
        PagamentoDinheiro pagDinheiro = new PagamentoDinheiro();
        Decimal troco = pagDinheiro.cobrar(150, 150);

        System.assertEquals(0, troco);

    }
    @IsTest
    public static void PagamentoDinheiroComTroco() {
        PagamentoDinheiro pagDinheiro = new PagamentoDinheiro();
        Decimal troco = pagDinheiro.cobrar(100, 150);
    
        System.assertEquals(50, troco);
        System.assertNotEquals(0, troco);

    }

    @IsTest
    public static void PagamentoDinheiroValorInsuficiente() {
        PagamentoDinheiro pagDinheiro = new PagamentoDinheiro();
        Decimal troco = pagDinheiro.cobrar(150, 100);

        System.assertEquals(-50, troco);
    }

    //Utilizando Cast:
    @IsTest
    public static void pagamento() {
        IPagamento ip = new PagamentoDinheiro();
        Decimal troco =  ip.cobrar(200, 210);

        System.assertEquals(10, troco);
        
    }

    //-------- Interface para teste:

    public static Decimal receber(IPagamento pagamento , Decimal valorCompra, Decimal valorPago) {
        return pagamento.cobrar(valorCompra, valorPago);
    }

    @IsTest
    public static void PagamentoDinamico() {
        Decimal trocoDinheiro = receber(new PagamentoDinheiro(), 150, 200);
        System.assertEquals(50, trocoDinheiro);

        Decimal trocoCartao = receber(new PagamentoCartao(), 150, 150);
        System.assertEquals(0, trocoCartao);
    }
}
