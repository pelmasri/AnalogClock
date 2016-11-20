//
//  Timer.swift
//  AnalogClock
//
//  Created by Daniel Labbad on 30/10/2016.
//  Copyright © 2016 Daniel Labbad. All rights reserved.
//

import Foundation
import Cocoa

class Time: ViewController {
    
    var i = 0
    var timer = Timer()
    var border: CGFloat = 0.0
    var handWidth: CGFloat = 0.0
    var angle: Double = 0.0
    var handColor: CGColor = NSColor.clear.cgColor
    var clockFaceColor = NSColor.black.cgColor
    
    func time(view: NSView, mDay: NSTextField, mMonth: NSTextField , hand: String, interval: Double) {
        
        var hour = Double()
        var minutes = Double()
        var seconds = Double()
        var day = Double()
        var month = Double()
        
        _ = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { timer in
            
                seconds = Double(curDate().2)
                hour = Double(curDate().0)
                minutes = Double(curDate().1)
                day = Double(curDate().3)
                month = Double(curDate().4)
                print(day)
                print(month)
            
                switch hand {
                    case "hour":
                        self.border = 140
                        self.handWidth = 5.0
                        self.handColor = NSColor.blue.cgColor
                        self.angle = self.hourAngle(hour: hour)
                
                    case "minutes":
                        self.border = 80
                        self.handWidth = 3.0
                        self.handColor = NSColor.green.cgColor
                        self.angle = (minutes / 60) * 2 * M_PI
                
                    case "seconds":
                        self.border = 55
                        self.handWidth = 1.0
                        self.handColor = NSColor.red.cgColor
                        self.angle = (seconds / 60) * 2 * M_PI
                    
                    case "day":
                        mDay.stringValue = String(Int(day))
                    
                    case "month":
                        let mon = self.convertMonth(month: month)
                        mMonth.stringValue = mon
                
                    default:
                        print("Error")
            }
            
            if (self.angle == M_PI) {ClockBuild(clockView: view, border: 40, color: clockFace)}

                clockController(clockView: view, hand: hand, border: self.border, color: NSColor.black.cgColor, angle: (self.angle - ((M_PI * 2) / 60)), lineWidth: self.handWidth)
            
                clockController(clockView: view, hand: hand, border: self.border, color: self.handColor, angle: self.angle, lineWidth: self.handWidth)
            
            
                ClockBuild(clockView: view, border: 390, color: clockCentre)


            }

        }
    
    // This function converts 24 hour time into 12 hour time and calculates an angle in radians for the hour hand on an analoge clock. 
    func hourAngle (hour: Double) -> Double {
        
        var angle: Double = 0
        
        if hour <= 12 {
            angle = (hour / 12) * 2 * M_PI
        } else {
            angle = ((hour - 12) / 12) * 2 * M_PI
        }
        return angle
    
    }
    
    func convertMonth (month: Double) -> String {
        
        switch month {
        
        case 1:
            return "Jan"
        case 2:
            return "Feb"
        case 3:
            return "Mar"
        case 4:
            return "Apr"
        case 5:
            return "May"
        case 6:
            return "Jun"
        case 7:
            return "Jul"
        case 8:
            return "Aug"
        case 9:
            return "Sep"
        case 10:
            return "Oct"
        case 11:
            return "Nov"
        case 12:
            return "Dec"
        
        default:
            print("Error")
            return "0"
    }
        return "0"
}

}
