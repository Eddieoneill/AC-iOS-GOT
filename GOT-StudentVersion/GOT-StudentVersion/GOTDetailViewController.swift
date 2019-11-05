//
//  GOTDetailViewController.swift
//  GOT-StudentVersion
//
//  Created by Edward O'Neill on 11/5/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import UIKit

class GOTDetailViewController: UIViewController {

    @IBOutlet weak var episodeImageView: UIImageView!
    @IBOutlet weak var summaryLabel: UILabel!
    
    var episode: GOTEpisode? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let episode = episode else {
            return
        }
        episodeImageView.image = UIImage(named: episode.originalImageID)
        summaryLabel.text = episode.summary
    }
}
