public with sharing class loopsInApex {
/*Pense dessa forma: o loop do-while sempre é executado pelo menos uma vez.
 O loop while pode nunca ser executado, dependendo da condição. 
*/

    public static void serveGuests(Integer totalGuests, Integer totalAmountSugar, Integer totalAmountTea) {
        
        while (totalGuests > 0) {
            System.debug(totalGuests +' Guests Remaining.');
            // check ingredients
            if (totalAmountSugar == 0 || totalAmountTea == 0) {
                System.debug('Out of ingredients! Sugar: '+ totalAmountSugar + ' Tea: '+totalAmountTea);
                break; // ends the while loop
            }
            //add sugar
            totalAmountSugar--;
            //add tea
            totalAmountTea--;
            //guest served
            totalGuests--;
        }

    }

    /*Calling the method:
    //Declare an Integer variable called totalGuests and set it to 100
    //Declare an Integer variable called totalAmountSugar and set it to 159 (number of teaspoons in a bag of sugar).
    //Declare an Integer variable called totalAmountTea and set it to 35 (number of teabags).

    Integer totalGuests = 100;
    Integer totalAmountSugar = 159;
    Integer totalAmountTea = 35;
    loopsInApex.serveGuests(totalGuests,totalAmountSugar, totalAmountTea);
    //Loop: Add a teaspoon of sugar and one tea bag to a tea cup. Serve until there is no sugar or tea left.

    */
}
