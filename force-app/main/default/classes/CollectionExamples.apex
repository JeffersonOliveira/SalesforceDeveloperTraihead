public class CollectionExamples {

  public static void getList() {
    System.debug('Trabalhando com Listas');
    List<String> cores = new List<String>();
    System.debug(cores);
    cores.add('laranja');
    cores.add('Azul');
    cores.add('amarelo');
    System.debug(cores);
    System.debug(cores[1]);
  }

  public static void getSet() {
    System.debug('Trabalhando com Sets');
    Set<String> cores2 = new Set<String>();
    System.debug(cores2);
    cores2.add('Azul');
    cores2.add('laranja');
    cores2.add('amarelo');
    cores2.add('amarelo');
    System.debug(cores2);
  }
  public static void getMap() {
    System.debug('Trabalhando com Maps');
    Map<String, String> coresMap = new Map<String, String>();
    System.debug(cores);
    coresMap.put('Red','255,0,0');
    coresMap.add('Blue','0,255,0');
    coresMap.add('Yellow','0,0,255');
    System.debug(coresMap.get().coresMap('Red'));
    Map<String, String> MyStrings = new Map<String, String>{'a' => 'b', 'c' => 'd'.toUpperCase()};
  }
  

}