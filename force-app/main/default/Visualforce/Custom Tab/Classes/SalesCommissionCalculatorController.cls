/**
 * @description       : Sales Commission Calculator Controller.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
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