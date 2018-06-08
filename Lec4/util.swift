//
//  util.swift
//  Lec4
//
//  Created by HackerU on 03/05/2018.
//  Copyright © 2018 HackerU. All rights reserved.
//

import Foundation

func rand(upper: Int)->Int{
    return Int(arc4random_uniform(UInt32(upper)))
}

enum Rank: Int{
    case two = 2, three, four, five, six, seven, eight, nine, ten
    case Jack , Queen , King, Ace
    var description: String{
        switch self {
        case .Jack:
            return "Jack"
        case .Queen:
            return "Queen"
        case .King:
            return "King"
        case .Ace:
            return "Ace"
        default:
            return "\(rawValue)"
        }
    }
    
    var numericValue: Int {
        switch self {
        case .two, .three, .four , .five, .six, .seven, .eight, .nine, .ten:
            return rawValue
        case .Jack:
            return 11
        case .Queen:
            return 12
        case .King:
            return 13
        case .Ace:
            return 14
        }
    }
    
}
