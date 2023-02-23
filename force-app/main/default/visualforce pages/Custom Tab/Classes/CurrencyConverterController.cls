/**
 * @description       : Currency Converter Controller.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
**/

public with sharing class CurrencyConverterController {
        
   public String fromCurrency {get; set;}
   public String toCurrency {get; set;}
   public Decimal amount {get; set;}
   public Decimal convertedAmount {get; set;}
   public Map<String, Decimal> exchangeRates {get; set;}
   public Boolean showResult { get; set; }
   public Double resultAmount { get; set; }
   
   public CurrencyConverterController() {
       // initialize the exchange rates for the currencies
       exchangeRates = new Map<String, Decimal>();
       exchangeRates.put('BRL', 5.17);
       exchangeRates.put('USD', 1.0);
       exchangeRates.put('EUR', 0.94); 
       exchangeRates.put('GBP', 0.83); 
       
   }
   
   public void convert() {
       Double usdAmount = Double.valueOf(amount) / exchangeRates.get(fromCurrency);
       
       // convert the amount from USD to the toCurrency
       convertedAmount =  (usdAmount * exchangeRates.get(toCurrency)).setScale(2);
       showResult=true;
   }
}