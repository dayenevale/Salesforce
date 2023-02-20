/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-20-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class SalesCommissionCalculatorController {
    public Decimal salesAmount { get; set; }
    public Decimal commissionRate { get; set; }
    public Decimal commissionAmount { get; set; }
    public Boolean showResult { get; set; }
    
    public void calculateCommission() {
        commissionAmount = salesAmount * commissionRate / 100;
        showResult = true;
        System.debug('commissionAmount = '+ commissionAmount);
        
    }
}