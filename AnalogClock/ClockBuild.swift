//
//  ClockBuild.swift
//  AnalogClock
//
//  Created by Daniel Labbad on 23/10/2016.
//  Copyright © 2016 Daniel Labbad. All rights reserved.
//

import Foundation
import Cocoa

/* 
 * The ClockBuild function creates a filled circle of any size (set by the border from the current view).
 * The program uses this function to build the clock face and central small hub.
*/

func ClockBuild (clockView: NSView, border: CGFloat, color: CGColor)  {
    
    clockView.wantsLayer = true // You need to add the wantsLayer function to NSView

    let startX = border / 2
    let startY = border / 2
    let clockWidth = clockView.frame.width - border
    let clockHeight = clockView.frame.height - border
    
    let clockLayer = CAShapeLayer()
    clockLayer.path = CGPath(ellipseIn: CGRect(x: startX, y: startY, width: clockWidth, height: clockHeight), transform: nil)
    clockLayer.fillColor = color
    clockView.layer?.addSublayer(clockLayer)
    
}

/*
 * The clockController function calculates the hand within a curcle at a given angle
 * The program uses this function to build the hour, minute and second hands
 */

func clockController (clockView: NSView, hand: String, border: CGFloat, color: CGColor, angle: Double, lineWidth: CGFloat)  {
    
    let radius: CGFloat = (clockView.frame.width - border) / 2
    let centreX = clockView.frame.width / 2
    let centreY = clockView.frame.height / 2
    let centre = CGPoint(x: centreX, y: centreY)
    
    let clockLayer = CAShapeLayer()
    
    

    let xDelta = radius * CGFloat(sin(angle))
    var yDelta: CGFloat {
        get {
            if (angle == M_PI) { return (2 * radius) } else {
                return xDelta / CGFloat(tan((M_PI-angle)/2)) }
        }
    }

    let xCoord = centreX + xDelta
    let yCoord = centreY + radius - yDelta
    
    let path = CGMutablePath()
        path.move(to: centre)
        path.addLine(to: CGPoint(x: xCoord, y: yCoord))
    path.closeSubpath()
    
    clockLayer.path = path
    clockLayer.strokeColor = color
    clockLayer.lineWidth = lineWidth
    clockView.layer?.addSublayer(clockLayer)
    
}






