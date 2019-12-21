@isTest
public class AccountTriggerTest {
    
    @testSetup
    static void setup(){
        List<Account> test_accounts = new List<Account>();
        for (Integer i = 0; i < 400; i++) {
            test_accounts.add(
                new Account(
                    Name = 'Account ' + i
                )
            );
        }
        insert test_accounts;
    }

    @isTest static void beforeInsert(){
        List<Account> test_accounts = [SELECT Id, Description FROM Account];
        for (Account my_account : test_accounts) {
            System.assertEquals(
                'Hi! I\'m a description.', 
                my_account.Description
            );
        }
    }

    @isTest static void beforeUpdate(){
        List<Account> test_accounts = [SELECT Id FROM Account];
        for (Account my_account : test_accounts) {
            my_account.Description = NULL;
        }
        
        Test.startTest();
            update test_accounts;
        Test.stopTest();

        test_accounts = [SELECT Id, Description FROM Account];
        for (Account my_account : test_accounts) {
            System.assertEquals(
                'I\'m back!', 
                my_account.Description
            );
        }
    }

}
