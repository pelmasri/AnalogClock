//
//  Date.swift
//  AnalogClock
//
//  Created by Daniel Labbad on 30/10/2016.
//  Copyright © 2016 Daniel Labbad. All rights reserved.
//
import Foundation
import Cocoa

func curDate() -> (hour: Int, minutes: Int, seconds: Int, day: Int, month: Int) {
    
        let date = Date()
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
    
        return (hour, minutes, seconds, day, month)
    
        }
        

    

