//
//  ViewController.swift
//  StopWatch
//
//  Created by Allen on 16/1/4.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0.0
    var isPlay = false
    var Timer = NSTimer()
    
    @IBOutlet weak var timeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeText.text = String(count)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    

    @IBAction func resetButton(sender: UIButton) {
        count = 0.0
        Timer.invalidate()
        isPlay = false
        timeText.text = String(count)
    }
    
    @IBAction func StartButton(sender: UIButton) {
        if isPlay{
            return
        }
        isPlay = true
        Timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func PauseButton(sender: UIButton) {
        isPlay = false
        Timer.invalidate()
    }
    
    
    func updateTime(){
        count = count+0.1
        print(count)
        timeText.text = String(format: "%.1f",count);
    }
}

