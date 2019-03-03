//
//  Wage.swift
//  window-shoper
//
//  Created by Philip on 3/3/19.
//  Copyright © 2019 Philip. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage:Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
