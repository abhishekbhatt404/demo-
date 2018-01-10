//
//  apiTokenClass.swift
//  demo@2
//
//  Created by abhishek bhatt on 10/01/18.
//  Copyright © 2018 abhishek bhatt. All rights reserved.
//

import Foundation


let Base_URL = "http://api.openweathermap.org/data/2.5/weather?"
let Latitude = "lat="
let Longitude = "&lon="
let APP_ID = "&appid="
let API_KEY = "9a07299c24834d04458aed69822726e3"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(Base_URL)\(Latitude)30.7\(Longitude)76.7\(APP_ID)\(API_KEY)"

