//
//  UITableViewCell.swift
//  GOT-StudentVersion
//
//  Created by Edward O'Neill on 11/4/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class GOTTableViewCell: UITableViewCell {

    @IBOutlet weak var videoImageView1: UIImageView!
    @IBOutlet weak var titleName1: UILabel!
    @IBOutlet weak var seasonAndEpisode1: UILabel!
    @IBOutlet weak var videoImageView2: UIImageView!
    @IBOutlet weak var titleName2: UILabel!
    @IBOutlet weak var seasonAndEpisode2: UILabel!
    
    func setEpisode(episode: GOTEpisode) {
        if episode.season % 2 != 0 {
            videoImageView1.image = UIImage(named: episode.mediumImageID)
            titleName1.text = episode.name
            seasonAndEpisode1.text = "S:\(episode.season) E:\(episode.number)"
        } else {
            videoImageView2.image = UIImage(named: episode.mediumImageID)
            titleName2.text = episode.name
            seasonAndEpisode2.text = "S:\(episode.season) E:\(episode.number)"
        }

    }
}
