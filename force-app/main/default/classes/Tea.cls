public class Tea {
    public static void orderTea() {
        Set<String> teaTypes = new Set<String>{'Black', 'White', 'Herbal'};
        System.debug(teaTypes);
        teaTypes.add('Green');
        teaTypes.add('Black');
        System.debug(teaTypes);
    }

    public static void orderTeaMap() {
        Map<String, String> teaTypes = new Map<String,String>();
        teaTypes.put('Black','Earthy');
        teaTypes.put('Herbal','Sweet');
        teaTypes.put('White','Sweet');
        System.debug(teaTypes);
    }
}
