public class FruitsArraysTest {
    
	public static List<String> generateFruitList() {
        
        //Create a list and add elements to it in one step
        List<String> colors = new List<String>{ 'red', 'green', 'blue'};
        // Add elements to a list after it has been created
		//Only an examplo: String[] moreColors = new List<String>();
		List<String> moreColors = new List<String>();
        moreColors.add('orange');
        moreColors.add('purple');
        
        //Get elemetns from a list
        String color1 = moreColors.get(0);
        String color2 = moreColors[0];
        System.debug('Color1 = '+ color1);
        System.debug('Color2 = '+ color2);             
        System.assertEquals(color1, color2,'Os números não são iguais.');
       
        List<String> definitiveColors = new List<String>();
        
        // Iterate over a list to read elements
        System.debug('---> colors:');
        for(Integer i=0; i<colors.size();i++) {
        	//Write value to the debug log
        	System.debug(colors[i]);
            // write values from colors to the new list into the variable definitiveColors
            definitiveColors.add(colors[i]);
        }
               
        System.debug('---> moreColors');
        for(Integer i=0; i < moreColors.size();i++) {
            //Write value to the debug log
        	System.debug(moreColors[i]);
            // write values from moreColors to the new list into the variable definitiveColors
            definitiveColors.add(moreColors[i]);
        }
        
        System.debug('---> definitiveColors');
        for(Integer i=0; i < definitiveColors.size();i++) {
            //Write value to the debug log
        	System.debug(definitiveColors[i]);
        }
        
        return definitiveColors;
    }
    
}