/**
 * @description       : Test for Currency Converter.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
**/

@isTest
private class CurrencyConverterControllerTest {

    static testMethod void testConvert() {
        CurrencyConverterController controller = new CurrencyConverterController();
        controller.fromCurrency = 'BRL';
        controller.toCurrency = 'USD';
        controller.amount = 100.00;
        controller.convert();
        System.assertEquals(555.56, controller.convertedAmount, 'Conversion from BRL to USD is incorrect');
        
        controller.fromCurrency = 'USD';
        controller.toCurrency = 'EUR';
        controller.amount = 100.00;
        controller.convert();
        System.assertEquals(83.00, controller.convertedAmount, 'Conversion from USD to EUR is incorrect');
        
        controller.fromCurrency = 'GBP';
        controller.toCurrency = 'USD';
        controller.amount = 100.00;
        controller.convert();
        System.assertEquals(138.89, controller.convertedAmount, 'Conversion from GBP to USD is incorrect');
    }
}