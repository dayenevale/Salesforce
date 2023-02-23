/**
 * @description       : Test for Actions Controller.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
**/
@isTest
private class ActionsControllerTest {
    
    @isTest
    static void testIncrementCounter() {
        ActionController controller = new ActionController();
        Integer initialCount = controller.getCount();
        
        controller.incrementCounter();
        Integer newCount = controller.getCount();
        System.assertEquals(initialCount + 1, newCount);
    }
    
    @isTest
    static void testIncrementCounter2() {
        ActionController controller = new ActionController();
        Integer initialCount2 = controller.getCount2();
        
        controller.incrementCounter2();
        Integer newCount2 = controller.getCount2();
        System.assertEquals(initialCount2 + 1, newCount2);
    }
    
    @isTest
    static void testSayHello() {
        ActionController controller = new ActionController();
        
        controller.sayHello();
        String username = UserInfo.getName();
        System.assertEquals(username, controller.getUsername());
    }
    
    @isTest
    static void testSetStateAndGetState() {
        ActionController controller = new ActionController();
        
        controller.setState('yes');
        String state = controller.getState();
        System.assertEquals('yes', state);
    }
    
    @isTest
    static void testMethodOne() {
        ActionController controller = new ActionController();
        
        Test.startTest();
        controller.methodOne();
        Test.stopTest();
        System.assertEquals(null, controller.methodOne());
    }
}
