//
//  UITableViewCell.swift
//  GOT-StudentVersion
//
//  Created by Edward O'Neill on 11/4/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class GOTTableViewCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var seasonAndEpisode: UILabel!

    
    func setEpisode(episode: GOTEpisode) {
        videoImageView.image = UIImage(named: episode.mediumImageID)
        titleName.text = episode.name
        seasonAndEpisode.text = "S:\(episode.season) E:\(episode.number)"
    }
}
