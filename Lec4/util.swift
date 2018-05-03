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
