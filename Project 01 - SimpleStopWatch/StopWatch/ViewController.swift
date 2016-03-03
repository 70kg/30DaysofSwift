//
//  ViewController.swift
//  StopWatch
//
//  Created by Allen on 16/1/4.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
<<<<<<< HEAD:Project 1 - SimpleStopWatch/StopWatch/ViewController.swift
=======

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var pauseBtn: UIButton!
    
    var Counter = 0.0
    var Timer = NSTimer()
    var IsPlaying = false
>>>>>>> allenwong/master:Project 01 - SimpleStopWatch/StopWatch/ViewController.swift
    
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
<<<<<<< HEAD:Project 1 - SimpleStopWatch/StopWatch/ViewController.swift
        isPlay = false
        timeText.text = String(count)
=======
        IsPlaying = false
        Counter = 0
        timeLabel.text = String(Counter)
        playBtn.hidden = false
        pauseBtn.hidden = true
>>>>>>> allenwong/master:Project 01 - SimpleStopWatch/StopWatch/ViewController.swift
    }
    
    @IBAction func StartButton(sender: UIButton) {
        if isPlay{
            return
        }
<<<<<<< HEAD:Project 1 - SimpleStopWatch/StopWatch/ViewController.swift
        isPlay = true
        Timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func PauseButton(sender: UIButton) {
        isPlay = false
        Timer.invalidate()
=======
        playBtn.hidden = true
        pauseBtn.hidden = false
        Timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("UpdateTimer"), userInfo: nil, repeats: true)
        IsPlaying = true
    }
    
    @IBAction func pauseButtonDidTouch(sender: AnyObject) {
        
        playBtn.hidden = false
        pauseBtn.hidden = true
        Timer.invalidate()
        IsPlaying = false
        
>>>>>>> allenwong/master:Project 01 - SimpleStopWatch/StopWatch/ViewController.swift
    }
    
    
    func updateTime(){
        count = count+0.1
        print(count)
        timeText.text = String(format: "%.1f",count);
    }
}

