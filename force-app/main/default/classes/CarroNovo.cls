public Class CarroNovo {
    
    String cor;
    String fabricante;
    String modelo;
    String status;
    
    public CarroNovo(String cor, String fabricante, String modelo) {
        this.cor = cor;
        this.fabricante = fabricante;
        this.modelo = modelo;
        this.status = status;
    }
    
    public void ligar(){
        this.status = 'ligado';
    }
}
    
CarroNovo carro1 = new CarroNovo('branco','VW','Up');
System.debug(carro1);
carro1.ligar();
System.debug(carro1);

