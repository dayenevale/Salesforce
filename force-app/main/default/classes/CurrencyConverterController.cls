/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-20-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CurrencyConverterController {

    public String fromCurrency {get; set;}
    public String toCurrency {get; set;}
    public Decimal amount {get; set;}
    public Decimal convertedAmount {get; set;}
    public Map<String, Decimal> exchangeRates {get; set;}
 
    public CurrencyConverterController() {
       // initialize the exchange rates for the currencies
       exchangeRates = new Map<String, Decimal>();
       exchangeRates.put('BRL', 0.18); // 1 USD = 0.18 BRL
       exchangeRates.put('USD', 1.0);
       exchangeRates.put('EUR', 0.83); // 1 USD = 0.83 EUR
       exchangeRates.put('GBP', 0.72); // 1 USD = 0.72 GBP
    }
 
    public void convert() {
       // convert the amount from the fromCurrency to USD
       Double usdAmount = Double.valueOf(amount) / exchangeRates.get(fromCurrency);
       
       // convert the amount from USD to the toCurrency
       convertedAmount = usdAmount * exchangeRates.get(toCurrency);
    }
 }
 