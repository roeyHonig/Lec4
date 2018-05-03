//
//  ViewController.swift
//  Lec4
//
//  Created by HackerU on 02/05/2018.
//  Copyright © 2018 HackerU. All rights reserved.
//
// In Swift init is the constractor and swift doesn't let me not init fields
// In Swift, just like java, we have interface and extending class
// interface are called protocall - declaring a list of abstract methods
// class vs Struct  - Ref Vs Value
// In Swift Int , Double , String are Struct


import UIKit

class ViewController: UIViewController {
    // Drag and Drop (Left Ctrl + LMB + Drag) from the storyboard, nice, righ?
    // But don't forget!!!, never change the name of the varmanually
    // if you made a mistake and want to change the name
    // use RMB -> Refracotr
    // in the storyboard, stand on the entire View Controller in the Tree
    // and press the connection Inspector to delete connections
    // then you can saftelly change the name of the variable
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    
    @IBOutlet weak var rightBottomLabel: UILabel!
    @IBAction func deal(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rightBottomLabel.text = "😀"
        
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}









