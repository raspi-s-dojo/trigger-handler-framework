trigger Account on Account (before insert, after insert, before update, after update, before delete, after delete) {

    TriggerHandler.ITrigger handler = new AccountTriggerHandler(Trigger.oldMap, Trigger.newMap, Trigger.old, Trigger.new);

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            handler.bulkBeforeInsert();
        }
        when BEFORE_UPDATE {
            handler.bulkBeforeUpdate();
        }
        when BEFORE_DELETE {
            handler.bulkBeforeDelete();
        }
        when AFTER_INSERT {
            handler.bulkAfterInsert();
        }
        when AFTER_UPDATE {
            handler.bulkAfterUpdate();
        }
        when AFTER_DELETE {
            handler.bulkAfterDelete();
        }
    }

}