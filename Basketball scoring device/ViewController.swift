//
//  ViewController.swift
//  Basketball scoring device
//
//  Created by 20171105113 on 2018/11/22.
//  Copyright © 2018 20171105113. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftTime:Int = 60
    var timer :Timer!
    var homepoints:Int = 0
    var awaypoints:Int = 0
    @IBOutlet weak var Timedisplay: UITextField!
    @IBOutlet weak var Homepoints: UITextField!
    @IBOutlet weak var Awaypoints: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBAction func Startone(_ sender: Any) {
        Timedisplay.isEnabled =  false
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(1), target: self, selector: #selector(tickDown), userInfo: nil, repeats: true)
    }
    @IBAction func Finishone(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func Homebonuspoints(_ sender: Any) {
        homepoints = homepoints + 1
        Homepoints.text = "\(homepoints)"
        
    }
    
    @IBAction func Awaybonuspoints(_ sender: Any) {
        awaypoints = awaypoints + 1
        Homepoints.text = "\(homepoints)"
    }
    @objc func tickDown() {
        leftTime -= 1
        print(leftTime)
        Timedisplay.text = "\(leftTime)"
        if leftTime <= 0{
             timer.invalidate()
        }
}

}
