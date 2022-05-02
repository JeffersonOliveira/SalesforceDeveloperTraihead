public class Tea {
    public static void orderTea() {
        Set<String> teaTypes = new Set<String>{'Black', 'White', 'Herbal'};
        System.debug(teaTypes);
        teaTypes.add('Green');
        teaTypes.add('Black');
        System.debug(teaTypes);
    }
}
