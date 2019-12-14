public abstract class TriggerHandler {
    protected Map<Id, SObject> oldMap {get; set;}
    protected Map<Id, SObject> newMap {get; set;}
    protected List<SObject> oldList {get; set;}
    protected List<SObject> newList {get; set;}

    public TriggerHandler(Map<Id, SObject> oldMap,Map<Id, SObject> newMap) {
        this.oldMap = oldMap;
        this.newMap = newMap;
        this.oldList = oldMap.values();
        this.newList = newMap.values();
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
