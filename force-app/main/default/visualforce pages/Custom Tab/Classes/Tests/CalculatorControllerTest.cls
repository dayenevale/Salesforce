/**
 * @description       : Test for Simple Integer Calculator.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
**/

@isTest
private class CalculatorControllerTest {
    @isTest
    static void testAddition() {
        calculatorController calc = new calculatorController();
        calc.num = '2';
        calc.buttonValue = '+';
        calc.operate();
        calc.num = '3';
        calc.buttonValue = '=';
        calc.operate();
        System.assertEquals(5, calc.result);
    }
    
    @isTest
    static void testSubtraction() {
        calculatorController calc = new calculatorController();
        calc.num = '7';
        calc.buttonValue = '-';
        calc.operate();
        calc.num = '3';
        calc.buttonValue = '=';
        calc.operate();
        System.assertEquals(4, calc.result);
    }
    
    @isTest
    static void testMultiplication() {
        calculatorController calc = new calculatorController();
        calc.num = '3';
        calc.buttonValue = 'x';
        calc.operate();
        calc.num = '4';
        calc.buttonValue = '=';
        calc.operate();
        System.assertEquals(12, calc.result);
    }
    
    @isTest
    static void testDivision() {
        calculatorController calc = new calculatorController();
        calc.num = '10';
        calc.buttonValue = '/';
        calc.operate();
        calc.num = '2';
        calc.buttonValue = '=';
        calc.operate();
        System.assertEquals(5, calc.result);
    }
    
    @isTest
    static void testDivisionByZero() {
        calculatorController calc = new calculatorController();
        calc.num = '10';
        calc.buttonValue = '/';
        calc.operate();
        calc.num = '0';
        calc.buttonValue = '=';
        calc.operate();
        System.assertEquals(null, calc.result);
        System.assertEquals(true, calc.divideByZeroError);
        System.assertEquals(true, calc.disableButtons);
    }
    
    @isTest
    static void testClean() {
        calculatorController calc = new calculatorController();
        calc.num = '5';
        calc.buttonValue = '+';
        calc.operate();
        calc.num = '3';
        calc.buttonValue = '=';
        calc.operate();
        System.assertNotEquals(null, calc.result);
        calc.clean();
        System.assertEquals('', calc.screen);
        System.assertEquals('', calc.num);
        System.assertEquals(new List<Integer>(), calc.nums);
        System.assertEquals(-1, calc.op);
        System.assertEquals(null, calc.result);
        System.assertEquals('', calc.lastOperator);
        System.assertEquals(false, calc.divideByZeroError);
        System.assertEquals(false, calc.disableButtons);
    }
}
