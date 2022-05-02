public class Tea {
    public static void orderTea() {
        Set<String> teaTypes = new Set<String>{'Black', 'White', 'Herbal'};
        System.debug(teaTypes);
        teaTypes.add('Green');
        teaTypes.add('Black');
        System.debug(teaTypes);
    }

    public static String orderTeaMap() {
        Map<String, String> teaTypes = new Map<String,String>();
        teaTypes.put('Black','Earthy');
        teaTypes.put('Herbal','Sweet');
        teaTypes.put('White','Sweet');
        String flavorProfile = teaTypes.get('Herbal');
        System.debug('The flavorProfile of Herbal is '+flavorProfile);

        return flavorProfile;
    }
}
