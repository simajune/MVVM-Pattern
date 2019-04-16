//
//  Double+Extension.swift
//  GoodWeather
//
//  Created by SIMA on 15/04/2019.
//  Copyright © 2019 Mohammad Azam. All rights reserved.
//

import Foundation

extension Double {
    var formatAsDegree: String {
        return String(format: "%.0f°", self)
    }
}
