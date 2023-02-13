/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-13-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class TaskTrackerController {
    public Task task {get; set;}
    public List<Task> tasks {get; set;}
    
    public TaskTrackerController() {
        task = new Task();
        tasks = [SELECT Subject, ActivityDate, Status FROM Task];
    }
    
    public void saveTask() {
        insert task;
        tasks.add(task);
        task = new Task();
    }
}