//
//  WeatherManager.swift
//  Clima
//
//  Created by Eduardo Rodrigues on 24.06.24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL =
        "https://api.openweathermap.org/data/2.5/weather?lat=57&lon=-2.15&appid=786326a208afc328ca387055150fd6dd&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create a URL
        
        if let url = URL(string: urlString) {
            //2, Create a URLSession
            
            let session = URLSession(configuration: .default)
            //3. Give the session a task
            
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            //4. Start the task
            
            task.resume()
        }
        
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
