//
//  testCell.swift
//  PlayLocalVideo
//
//  Created by Mr_Wrong on 16/2/22.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit
struct playVideo {
    var image : String?
    var title : String?
    var source  : String?
}

class TestCell: UITableViewCell{
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var source: UILabel!
    @IBOutlet weak var playButton: UIButton!
    
    var video = playVideo()
    
    override func layoutSubviews() {
        background.image = UIImage(named: video.image!)
        title.text = video.title!
        source.text = video.source!
    }
    @IBAction func buttonClick(sender: UIButton) {
        print(video.title!)
    }
}

