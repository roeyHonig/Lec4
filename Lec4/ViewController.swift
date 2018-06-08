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

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// HW:    jackpot slot casino machine
// download and install the icons8 for mac
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
import UIKit

class ViewController: UIViewController {
    // Drag and Drop (Left Ctrl + LMB + Drag) from the storyboard, nice, righ?
    // when we Drag and Drop, we can change to a collection and get an Array
    // after i get an array i can drag and drop other labels into it
    // like i want to tell swift, all the labels are kind of similiar
    // But don't forget!!!, never change the name of the varmanually
    // if you made a mistake and want to change the name
    // use RMB -> Refracotr
    // in the storyboard, stand on the entire View Controller in the Tree
    // and press the connection Inspector to delete connections
    // then you can saftelly change the name of the variable
    // we created a new swift file in the tre of Lec4 (our project)
    // in this util.swift file, we've placed a rand function, which draws random numbers
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    
    @IBOutlet var suits: [UILabel]!
    @IBOutlet weak var rightBottomLabel: UILabel!
    @IBAction func deal(_ sender: UIButton) {
        //draw a card and push it into -> into the label
        let r = rand(upper: 4)
        let v = rand(upper: 13) + 2
        
        var shapeArray:[String] = ["♠︎","❤️","🔷","♣︎"]
       // rightBottomLabel.text = shapeArray[r]
        for item in suits {
            item.text = shapeArray[r]
            
        }
        
        if let rank = Rank(rawValue: v) {
            centerLabel.text = rank.description
        }
        
        
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









