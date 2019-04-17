//
//  SettingsViewModel.swift
//  GoodWeather
//
//  Created by Taejune Jung on 16/04/2019.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation

enum Unit: String, CaseIterable {
    case celsius = "metric"
    case fahrenheit = "imperial"
}

extension Unit {
    var displayName: String {
        get {
            switch(self) {
            case .celsius:
                return "Celsius"
            case .fahrenheit:
                return "Fahrenheit"
            }
        }
    }
}

struct SettingsViewModel {
    
    let units = Unit.allCases
    
    
}
