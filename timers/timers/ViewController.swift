//
//  ViewController.swift
//  timers
//
//  Created by Emin Kotan on 26.07.2018.
//  Copyright © 2018 Emin Kotan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    @IBAction func RetryButton(_ sender: Any) {
        if counter == 0 {
            counter = 10
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunc), userInfo: nil, repeats: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunc), userInfo: nil, repeats: true)
        counter = 10
        timeLabel.text = String(counter) }

    @objc func timerFunc() {
        counter = counter - 1
        timeLabel.text = String(counter)
        if counter == 0 {
            timer.invalidate() // zamanlayıcıyı durdurur
            timeLabel.text = "Zaman doldu"
        }
    }


}

