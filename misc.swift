//
//  misc.swift
//  AnalogClock
//
//  Created by Daniel Labbad on 29/10/2016.
//  Copyright © 2016 Daniel Labbad. All rights reserved.
//
// Superfolous code


/*
 * ALTERNATE TIMER FUNCTION WITHOUT CLOSURE
 * BY DAN LABBAD 30 OCTOBER 2016
 *
 
 func time2() {
 timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(update), userInfo: nil, repeats: true)
 }
 
 func update() {
 // note i previously declared as a class variable
 i += 1
 print(i)
 
 }
 
 
 *
 */


/*class draw: NSView {
 
 override func draw(_ dirtyRect: NSRect) {
 
 
 super.draw(dirtyRect)
 
 let context = NSGraphicsContext.current()?.cgContext
 
 context!.beginPath()
 context!.move(to: CGPoint(x: 0, y: 0))
 context!.addLine(to: CGPoint(x: 100, y: 100))
 context!.setStrokeColor(red: 1, green: 0.1, blue: 1, alpha: 1)
 context!.setLineWidth(4.0)
 context!.strokePath()
 
 }
 
 } */

/*let color = NSColor(red: 1.0, green: 0.5, blue: 0.5, alpha: 1.0)
 color.set()
 /*clockView.wantsLayer = true // You need to add the wantsLayer function to NSView */
 
 var aPath: NSBezierPath = NSBezierPath(rect:dirtyRect)
 aPath.move(to: NSMakePoint(20, 20))
 aPath.line(to: NSMakePoint(dirtyRect.size.width - 20, 20))
 aPath.lineWidth = 10.0
 aPath.stroke()
 
 
 }*/

//let startX = clockView.frame.width / 2
//let startY = clockView.frame.height / 2
//let endX = clockView.frame.width
//let endY = clockView.frame.height


//let clockLayer = CAShapeLayer()
//clockLayer.frame = CGRect(x: startX, y: startY, width: 0, height: 30)
//clockLayer.fillColor = color
//clockView.layer?.addSublayer(clockLayer)


//aPath.move(to: CGPoint(x: 0, y: 0))

//aPath.line(to: CGPoint(x: 100, y: 100))

//Keep using the method addLineToPoint until you get to the one where about to close the path
//aPath.close()


//If you want to stroke it with a red color
//NSColor.yellow.setStroke()
//aPath.stroke()




// let clockLayer = CAShapeLayer()
// clockLayer.strokeColor = color
//clockLayer.lineWidth = 1.0
//clockLayer.path = aPath.
//clockView.layer?.addSublayer(clockLayer)





/*  AN ALTERNATE CLOCKBUILD RECT FUNCTION BY DAN LABBAD
 * func ClockBuild (clockView: NSView)  {
 *
 *    clockView.wantsLayer = true
 *
 *   let border: CGFloat = 40
 *   let centreX = clockView.frame.width / 2
 *   let centreY = clockView.frame.height / 2
 *   let startX = border / 2
 *   let startY = border / 2
 *   let clockWidth = clockView.frame.width - border
 *   let clockHeight = clockView.frame.height - border
 *
 *   let clockLayer = CAShapeLayer()
 *   clockLayer.path = CGPath(rect: CGRect(x: startX, y: startY, width: clockWidth, height: clockHeight), transform: nil)
 *   clockLayer.fillColor = NSColor.clear.cgColor
 *   clockView.layer?.addSublayer(clockLayer)
 *
 *  }
 */
