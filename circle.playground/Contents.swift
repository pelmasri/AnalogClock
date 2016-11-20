//: Playground - noun: a place where people can play

import Cocoa
import PlaygroundSupport

var containerView = NSView(frame: NSRect(x: 0, y: 0, width: 400, height: 400))
    
containerView.layer?.backgroundColor = NSColor.green.cgColor

PlaygroundPage.current.liveView = containerView

let myView = NSView(frame: NSRect(x: 10, y: 10, width: 100, height: 100))

myView.layer?.backgroundColor = NSColor.blue.cgColor

containerView.addSubview(myView)




//containerView.

/*
var bPath:NSBezierPath = NSBezierPath(rect: dirtyRect)
let fillColor = NSColor(red: 0.5, green: 0.0, blue: 0.5, alpha: 1.0)
fillColor.set()
bPath.fill()

let borderColor = NSColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
borderColor.set()
bPath.lineWidth = 12.0
bPath.stroke()

let circleFillColor = NSColor(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
var circleRect = NSMakeRect(dirtyRect.size.width/4, dirtyRect.size.height/4, dirtyRect.size.width/2, dirtyRect.size.height/2)
var cPath: NSBezierPath = NSBezierPath(ovalInRect: circleRect)
circleFillColor.set()
cPath.fill()
*/
