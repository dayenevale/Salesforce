/**
 * @description       : Test for Sales COommission Calculator.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
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
