/**
 * @description       : Test for Actions Controller.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
**/
@isTest
private class ActionsControllerTest {
    
    @isTest
    static void testIncrementCounter() {
        ActionsController controller = new ActionsController();
        Integer initialCount = controller.getCount();
        
        controller.incrementCounter();
        Integer newCount = controller.getCount();
        System.assertEquals(initialCount + 1, newCount);
    }
    
    @isTest
    static void testIncrementCounter2() {
        ActionsController controller = new ActionsController();
        Integer initialCount2 = controller.getCount2();
        
        controller.incrementCounter2();
        Integer newCount2 = controller.getCount2();
        System.assertEquals(initialCount2 + 1, newCount2);
    }
    
    @isTest
    static void testSayHello() {
        ActionsController controller = new ActionsController();
        
        controller.sayHello();
        String username = UserInfo.getName();
        System.assertEquals(username, controller.getUsername());
    }
    
    @isTest
    static void testSetStateAndGetState() {
        ActionsController controller = new ActionsController();
        
        controller.setState('yes');
        String state = controller.getState();
        System.assertEquals('yes', state);
    }
    
    @isTest
    static void testMethodOne() {
        ActionsController controller = new ActionsController();
        
        Test.startTest();
        controller.methodOne();
        Test.stopTest();
        System.assertEquals(null, controller.methodOne());
    }
}