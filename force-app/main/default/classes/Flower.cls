public with sharing class Flower {

    public Integer numberOfPetals {get;set;}
    public Integer height {get;set;}
    public Integer maxheight {get;set;}
    public String color {get;set;}

    public Flower(){
    }

    public Flower(Integer numberOfPetals, Integer height,Integer maxheight, String color) {
        this.numberOfPetals = numberOfPetals;
        this.height = height;
        this.maxheight = maxheight;
        this.color = color;
    }


    public Integer wilt(Integer numberOfPetals) {
        System.debug('number Of petals: '+numberOfPetals);
        if (numberOfPetals >= 1 ){
            numberOfPetals--;
            System.debug('The flower lose a petal, so it has just '+numberOfPetals+' petal(s).');
        }else if (numberOfPetals <= 0){
            System.debug('The flower doesn\'t have petals');
        }
        return numberOfPetals;
    }

    public void grow(Integer height, Integer maxHeight) {
        height+=2;  //height = height + 2;
        System.debug('The flower is growing...');
        if (height >= maxHeight) {
            pollinate();
        }
    }

    public static void pollinate() {
        System.debug('Pollinating...');
    }
}


