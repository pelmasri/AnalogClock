//: Playground - noun: a place where people can play

import Cocoa
import PlaygroundSupport

func ClockBuild2 (clockView: NSView, border: CGFloat, color: CGColor)  {
    
    let clockLayer = CAShapeLayer()
    
    let path = CGMutablePath()
    path.move(to: CGPoint(x: 10.0, y: 10.0))
    path.addLine(to: CGPoint(x: 50.0, y: 50.0))
    path.closeSubpath()
    
    clockLayer.path = path
    
    clockLayer.strokeColor = NSColor.red.cgColor
    clockLayer.lineWidth = 10.0
    clockView.layer?.addSublayer(clockLayer)
    
}

let myView = NSView(frame: NSRect(x: 0, y: 0, width: 200, height: 200))

PlaygroundPage.current.liveView = myView

myView.layer?.backgroundColor = NSColor.green.cgColor
ClockBuild2(clockView: myView, border: 40, color: NSColor.red.cgColor)