public with sharing class AccountHelper {
    
    public static void setDescriptionBeforeInsert(List<Account> newList){
        for (Account my_account : newList) {
            if (my_account.Description == NULL) {
                my_account.Description = 'Hi! I\'m a description.';
            }
        }
    }

    public static void setDescriptionBeforeUpdateMap(Map<Id, SObject> newMap){
        for (Account my_account : (List<Account>)newMap.values()) {
            if (my_account.Description == NULL) {
                my_account.Description = 'I\'m back!';
            }
        }
    }

    public static void setDescriptionBeforeUpdateList(List<Account> newList){
        for (Account my_account : newList) {
            if (my_account.Description == NULL) {
                my_account.Description = 'I\'m back!';
            }
        }
    }

}
