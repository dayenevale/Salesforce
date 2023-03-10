/**
 * @description       : Calculator Controller.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
**/

public with sharing class CalculatorController {
    
    public Integer result { get; set; }
    public Integer op { get; set; }
    public String buttonValue { get; set; }
    public String screen { get; set; }
    public String lastOperator { get; set; }
    public String num { get; set; }
    public List<Integer> nums { get; set; }
    public Boolean divideByZeroError { get; set; } 
    public Boolean disableButtons { get; set; } 
    
    public CalculatorController() {
        result = null;
        op= -1;
        screen = ''; 
        lastOperator = '';
        num = '';       
        nums = new List<Integer>(); 
        divideByZeroError = false;
        disableButtons = false;
    }
    
    public void show(){
        num += buttonValue;
        screen += buttonValue;  
    }
    public void operate(){
        if(num != ''){
            nums.add(Integer.valueOf(num));
            num = '';
        }        
        op ++;
        screen += ' '+buttonValue+' ';
        if(lastOperator == ''){
            lastOperator = buttonValue;
        }
        switch on lastOperator{
            when '+' { add(); }
            when '-' { sub(); }
            when 'x' { multiply(); }
            when '/' { divide(); }
        }
        if(buttonValue == '=' && result <> null){
            screen += result;
            disableButtons = true;
        }
        lastOperator = buttonValue;
        
    }     
    public void add(){ 
        if(result ==  null){
            result = nums[op];
        }else{
            result+=nums[op];
        }      
    }
    public void sub(){
        if(result ==  null){
            result = nums[op];
        }else{
            result-=nums[op];
        }       
        
    }
    public void multiply() {
        if(result==null){
            result=1;
        }
        result*=nums[op];
    }
    
    public void divide() {
        try{
            if(result == null){
                result = nums[op]; 
            }
            else{
                result/=nums[op];
            }
            
        }catch(Exception e){
            screen = '';
            result = null;
            clean();
            divideByZeroError = true;
            disableButtons = true;
        }
    }
    
    public void clean(){
        screen = '';
        num = '';
        nums.clear();
        op = -1;
        result = null;
        lastOperator = '';
        disableButtons = false;
        divideByZeroError = false;
    }
    
    
}