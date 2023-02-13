/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 02-13-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class WeatherForecastController {
    public String city {get; set;}
    public List<Forecast> forecast {get; set;}
    public String message {get; set;}
    
    public class Forecast {
        public String weatherDate {get; set;}
        public String description {get; set;}
        public Integer temperature {get; set;}
    }
    
    public void getWeather() {
        if (city == null || city.trim().length() == 0) {
            message = 'Please enter a city';
            return;
        }
        
        // Get the weather data from an external API
        // In this example, we'll just use some dummy data for demonstration purposes
        forecast = new List<Forecast>(); //{ new Forecast(description = 'teste')};
        Forecast fc1 = new Forecast();
        fc1.description = 'Sunny';
        fc1.temperature = 28;
        fc1.weatherDate = String.valueOf(Date.Today()-1);
        forecast.add(fc1);
        
        Forecast fc2 = new Forecast();
        fc2.description = 'Partly Cloudy';
        fc2.temperature = 23;
        fc2.weatherDate = String.valueOf(Date.Today());
        forecast.add(fc2);
        
        Forecast fc3 = new Forecast();
        fc3.description = 'Rainy';
        fc3.temperature = 19;
        fc3.weatherDate = String.valueOf(Date.Today()+1);
        forecast.add(fc3);
                
    }
}