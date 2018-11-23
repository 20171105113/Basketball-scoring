//
//  ViewController.swift
//  Basketball scoring device
//
//  Created by 20171105113 on 2018/11/22.
//  Copyright © 2018 20171105113. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftTime:Int = 0
    var leftTime2:Int = 0
    var timer :Timer!
    var timer2 :Timer!
    var homepoints:Int = 0
    var awaypoints:Int = 0
    var temp:String = "0"
    var temp2:String = "0"
    @IBOutlet weak var Timedisplay: UITextField!
    @IBOutlet weak var Timedisplay2: UITextField!
    @IBOutlet weak var Homepoints: UITextField!
    @IBOutlet weak var Awaypoints: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    
    
    @IBAction func Startone(_ sender: Any) {
        temp = Timedisplay.text!
        leftTime = Int(temp)!
        Timedisplay.isEnabled =  false
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(1), target: self, selector: #selector(tickDown), userInfo: nil, repeats: true)
        
        temp2 = Timedisplay2.text!
        leftTime2 = Int(temp2)!
        Timedisplay2.isEnabled = false
        timer2 = Timer.scheduledTimer(timeInterval: TimeInterval(60), target: self, selector: #selector(tickDown2), userInfo: nil, repeats: true)
        
        
    }
    @IBAction func Finishone(_ sender: Any) {
        timer.invalidate()
        timer2.invalidate()
    }
    
    @IBAction func Homebonuspoints(_ sender: Any) {
        homepoints = homepoints + 1
        Homepoints.text = "\(homepoints)"
        
    }
    
    @IBAction func Awaybonuspoints(_ sender: Any) {
        awaypoints = awaypoints + 1
        Awaypoints.text = "\(awaypoints)"
    }
    @IBAction func Homebonus2(_ sender: Any) {
        homepoints = homepoints + 2
        Homepoints.text = "\(homepoints)"
    }
    @IBAction func Homebonus3(_ sender: Any) {
        homepoints = homepoints + 2
        Homepoints.text = "\(homepoints)"
    }
    @IBAction func Awaybonus2(_ sender: Any) {
        awaypoints = awaypoints + 2
        Awaypoints.text = "\(awaypoints)"
    }
    @IBAction func Awaybonus3(_ sender: Any) {
        awaypoints = awaypoints + 3
        Awaypoints.text = "\(awaypoints)"
    }
    @objc func tickDown() {
        leftTime -= 1
        print(leftTime)
        Timedisplay.text = "\(leftTime)"
        if leftTime <= 0{
             leftTime = 60
        }
        if leftTime2 == -1{
            timer.invalidate()
        }

        
}
    @objc func tickDown2() {
            leftTime2 -= 1

        

            print(leftTime2)
            Timedisplay2.text = "\(leftTime2)"
            if leftTime2 <= 0{
                timer2.invalidate()
                leftTime2 = -1
            }
}
}
