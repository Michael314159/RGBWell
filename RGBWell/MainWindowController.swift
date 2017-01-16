//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Michael Talmadge on 1/15/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    
    var red = 0.5
    var green = 0.5
    var blue = 0.5
    
    
    var formatRed: String = ""
    var formatGreen: String = ""
    var formatBlue: String = ""
        
    
    @IBOutlet weak var lblRed: NSTextField!
    @IBOutlet weak var lblGreen: NSTextField!
    @IBOutlet weak var lblBlue: NSTextField!
   
    
    let alpha = 1.0 //opacity value neede by NSColor()
    
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alpha))
        colorWell.color = newColor
        
    }
    
    
    
    
    
    @IBAction func adjustRed(_ sender: NSSlider) {
        red = sender.doubleValue
        formatRed = String(format: "%.2f", red)
        lblRed.stringValue = formatRed
        updateColor()
        
    }
    
    
    @IBAction func adjustGreen(_ sender: NSSlider) {
        green = sender.doubleValue
        formatGreen = String(format: "%.2f", green)
        lblGreen.stringValue = formatGreen
        updateColor()
    }
    
    
    @IBAction func adjustBlue(_ sender: NSSlider) {
        blue = sender.doubleValue
        formatBlue = String(format: "%.2f", blue)
        lblBlue.stringValue = formatBlue
        updateColor()
    }
    
    override var windowNibName: String?  {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        
        //update colorwell to label numbers...
        updateColor()
        
        
        
    }
    
}
