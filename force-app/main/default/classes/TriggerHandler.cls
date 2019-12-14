public abstract class TriggerHandler {
    public TriggerHandler(Map<Id, SObject> oldMap, Map<Id, SObject> newMap,
                            List<SObject> oldList, List<SObject> newList) {
        this.oldMap = oldMap;
        this.newMap = newMap;
        this.oldList = oldList;
        this.newList = newList;
    }

    public interface ITrigger {
        void bulkBeforeInsert();
        void bulkBeforeUpdate();
        void bulkBeforeDelete();
        void bulkAfterInsert();
        void bulkAfterUpdate();
        void bulkAfterDelete();
    }
}
