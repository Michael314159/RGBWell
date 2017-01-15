//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Michael Talmadge on 1/15/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    
    var redLabel = 0.5
    var greenLabel = 0.5
    var blueLabel = 0.5
    
    let alpha = 1.0 //opacity value neede by NSColor()
    
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(redLabel), green: CGFloat(greenLabel), blue: CGFloat(blueLabel), alpha: CGFloat(alpha))
        colorWell.color = newColor
        
    }
    
    
    
    
    
    @IBAction func adjustRed(_ sender: NSSlider) {
        redLabel = sender.doubleValue
        updateColor()
        
    }
    
    
    @IBAction func adjustGreen(_ sender: NSSlider) {
        greenLabel = sender.doubleValue
        updateColor()
    }
    
    
    @IBAction func adjustBlue(_ sender: NSSlider) {
        blueLabel = sender.doubleValue
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
