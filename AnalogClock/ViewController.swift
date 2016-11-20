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

    @IBOutlet weak var clockView: NSView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clockView.layer?.backgroundColor = clockBackground //Adds background to clockView
        
        ClockBuild(clockView: clockView, border: 40, color: clockFace) // Build black clockface once
        
        let myHour = Time()
        let myMins = Time()
        let mySecs = Time()
        
        myHour.time(view: clockView, hand: "hour", interval: 1)
        myMins.time(view: clockView, hand: "minutes", interval: 1)
        mySecs.time(view: clockView, hand: "seconds", interval: 1)

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

