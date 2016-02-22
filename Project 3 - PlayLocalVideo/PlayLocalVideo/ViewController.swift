//
//  ViewController.swift
//  PlayLocalVideo
//
//  Created by Allen on 16/1/9.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var data = [
        playVideo(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        playVideo(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        playVideo(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        playVideo(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        playVideo(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        playVideo(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self;
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TestCell", forIndexPath: indexPath) as! TestCell    

        cell.video = data[indexPath.row]
        
        return cell
        
    }
    
    func test(){
        print("打印");
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
   
}

