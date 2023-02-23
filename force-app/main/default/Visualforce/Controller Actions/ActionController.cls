/**
 * @description       : Controller for the visualforce page Actions.
 * @author            : Dayene Vale
 * @last modified on  : 02-23-2023
**/
public class ActionController {
    public Integer count { get; set; }
    public Integer count2 { get; set; }
    public String uname { get; set;}
    
    public ActionController(){
        count = 0;
        count2 = 0;
    }
    
    public PageReference incrementCounter() {
        count++;
        return null;
    }
    
    public PageReference incrementCounter2() {
        count2++;
        return null;
    }
    
     public Integer getCount() {
        return count;
    }
    
    public Integer getCount2() {
        return count2;
    }
    
    public void save() {
        System.debug('Save!');
    }
    public String getUsername() {
        return uname;
    }
            
    public PageReference sayHello() {
        uname = UserInfo.getName();
        return null;
    }
            
    public void setState(String n) {
        state = n;
    }
            
    public String getState() {
        return state;
    }
            
    public PageReference methodOne() {
        return null;
    }
            
    private String state = 'no';
}