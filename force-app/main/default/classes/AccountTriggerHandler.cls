public with sharing class AccountTriggerHandler extends TriggerHandler implements TriggerHandler.ITrigger {

    public AccountTriggerHandler(Map<Id, SObject> oldMap, Map<Id, SObject> newMap,
                                List<SObject> oldList, List<SObject> newList) {
        super(oldMap, newMap, oldList, newList);
    }

    public void bulkBeforeInsert() {
        //Your awesome code
    }

    public void bulkBeforeUpdate() {
        //Your awesome code
    }

    public void bulkBeforeDelete() {
        //Your awesome code
    }

    public void bulkAfterInsert() {
        //Your awesome code
    }

    public void bulkAfterUpdate() {
        //Your awesome code
    }

    public void bulkAfterDelete() {
        //Your awesome code
    }

}