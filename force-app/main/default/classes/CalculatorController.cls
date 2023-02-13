/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-13-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class CalculatorController {
    public Double firstNumber { get; set; }
    public Double secondNumber { get; set; }
    public String operation { get; set; }
    public Double result { get; set; }
  
    public void calculate() {
      switch on operation {
        when '+' { result = firstNumber + secondNumber; }
        when '-' { result = firstNumber - secondNumber; }
        when '*' { result = firstNumber * secondNumber; }
        when '/' { result = firstNumber / secondNumber; }
      }
    }
  }