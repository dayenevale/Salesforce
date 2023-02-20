/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-20-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
private class SalesCommissionCalculatorControllerTest {
    @isTest
    static void testCalculateCommission() {
        SalesCommissionCalculatorController controller = new SalesCommissionCalculatorController();
        controller.salesAmount = 10000;
        controller.commissionRate = 10;
        controller.calculateCommission();
        System.assertEquals(1000, controller.commissionAmount);
    }
}
