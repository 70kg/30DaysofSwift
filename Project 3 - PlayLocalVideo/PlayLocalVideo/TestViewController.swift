//
//  TestViewController.swift
//  PlayLocalVideo
//
//  Created by Mr_Wrong on 16/2/22.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class TestViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var testTableView: UITableView!
    
    var data = [
        
        video(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        video(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        video(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        video(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        video(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        video(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.delegate = self;
        testTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCellWithIdentifier("TestCell", forIndexPath: indexPath)as! TestCell
        let video = data[indexPath.row]
        cell.title.text =  video.title;
        cell.source.text = video.source;
        cell.background.image = UIImage(named: video.image)
        
        return cell
    
    }

}
