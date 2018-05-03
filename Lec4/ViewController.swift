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

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Reference Types
        var p1 = CompassPoint(x: 10, y: 20)
        var p2 = CompassPoint(x: 0, y: 0)
        
        print("p1: \(p1.description)")
        print("p2: \(p2.description)")
        print("more simple code")
        print("p1: \(p1)")
        print("p2: \(p2)")
        
        p2 = p1 // now p2 points to whatever value p1 points to
        p2.x = 1000 // now, both p1.x and p2.x have the value 1000, because they point at the same thing
        
        print("p1: \(p1)")
        print("p2: \(p2)")
        
        
        
        let person = Person(peoplelFood: "orange", firstName: "roey")
        print(person)
        sayGreetTo(p: person) // !!!! mutating function
        print(person)
        
        
        
        //End of viewDidLoad func
    }

    func sayGreetTo(p: Person){
        // Hello Mr.
        p.firstName = "Mr. " + p.firstName
        print("Hello, \(p.firstName)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

// unlike in Java, where every class inherited, in fact, from Object and had the methood toString
// because of inheritant. in swift there is no top-level father classs
// so if we want to provide some written description of our class instatnce we should implement the protocal (Interface)
// that carries that method
// it's a bit tricky, sometimes to know for a sure, if the 1st name after the ":" is a super class
// or an protocall
// the others will be protoccols
class Person: Mamal, CustomStringConvertible, Cubaser{
    func pitchUp() {
        
    }
    func pitchDown() {
        
    }
    
    var description: String{
        return firstName + "Eats: " + self.food
        
    }
    
    // field
    var firstName: String
//    // computed property
//    var description: String{
//        return firstName
//    }
    // constractor
    // In Swift we call the super at the end
    init(peoplelFood:String,firstName: String) {
        self.firstName = firstName
        super.init(food: peoplelFood)
        
    }
    
}

class Mamal{
    var food:String
    init(food:String) {
        self.food = food
    }
}


protocol Cubaser {
    //requirement list of function to every Cubaser out there
    func pitchUp()
    func pitchDown()
}


//Types in Swift: ?
//enum, protocol, class,?
// class are Reference Type  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
class CompassPoint: CustomStringConvertible{
    var x: Double
    var y: Double
    
    var description: String{
        return "x: \(x),  y: \(y)"
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    //Actions
    
}


//Structures are value Types  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
struct Spoint {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    var description: String{
        return "x: \(x) , y: \(y)"
    }
}










