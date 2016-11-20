//
//  ViewController.swift
//  AnalogClock
//
//  Created by Daniel Labbad on 23/10/2016.
//  Copyright © 2016 Daniel Labbad. All rights reserved.
//

import Cocoa

let clockBackground = NSColor.clear.cgColor
let clockFace = NSColor.black.cgColor
let clockCentre = NSColor.white.cgColor

class ViewController: NSViewController {
    @IBOutlet var dayNo: NSTextField!
    @IBOutlet var monthNo: NSTextField!
    
    @IBOutlet weak var clockView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dayNo.stringValue = ""
        dayNo.textColor = NSColor.lightGray
        monthNo.stringValue = ""
        monthNo.textColor = NSColor.lightGray
        
        clockView.layer?.backgroundColor = clockBackground //Adds background to clockView
        
        ClockBuild(clockView: clockView, border: 40, color: clockFace) // Build black clockface once
        
        let myHour = Time()
        let myMins = Time()
        let mySecs = Time()
        let myDay = Time()
        let myMonth = Time()

        myHour.time(view: clockView, mDay: dayNo, mMonth: monthNo, hand: "hour", interval: 1)
        myMins.time(view: clockView, mDay: dayNo, mMonth: monthNo, hand: "minutes", interval: 1)
        mySecs.time(view: clockView,  mDay: dayNo, mMonth: monthNo, hand: "seconds", interval: 1)
        myDay.time(view: clockView, mDay: dayNo, mMonth: monthNo, hand: "day", interval: 1)
        myMonth.time(view: clockView, mDay: dayNo, mMonth: monthNo, hand: "month", interval: 1)

    }
    
  
    override func viewDidAppear() {
        ClockBuild(clockView: clockView, border: 40, color: clockFace)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    



}

