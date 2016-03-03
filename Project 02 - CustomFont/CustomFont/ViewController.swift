//
//  ViewController.swift
//  CustomFont
//
//  Created by Allen on 16/1/7.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var data = ["30 Days Swift", "这些字体特别适合打「奋斗」和「理想」", "谢谢「造字工房」，本案例不涉及商业使用", "使用到造字工房劲黑体，致黑体，童心体", "呵呵，再见🤗 See you next Project", "微博 @Allen朝辉"]
    
    var fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular"]
    
    var fontRowIndex = 0

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    @IBOutlet weak var tableVeiw: UITableView!
    
    @IBAction func changeFont(sender: UIButton) {
        fontRowIndex = (fontRowIndex+1)%3
        tableVeiw.reloadData()
    }
    
    override func viewDidLoad() {
        tableVeiw.delegate = self
        tableVeiw.dataSource = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableVeiw.dequeueReusableCellWithIdentifier("FontCell", forIndexPath: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.textLabel?.textColor = UIColor.whiteColor();
        cell.textLabel?.font = UIFont(name: fontNames[fontRowIndex], size: 16)
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}

