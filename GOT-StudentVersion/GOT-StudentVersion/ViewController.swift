//
//  ViewController.swift
//  GOT-StudentVersion
//
//  Created by C4Q  on 11/2/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var gotEpisodes: [GOTEpisode] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cretateEpisodes()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func cretateEpisodes() {
        for (index, _) in GOTEpisode.allEpisodes.enumerated() {
            gotEpisodes.append(GOTEpisode.allEpisodes[index])
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gotEpisodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let episode = gotEpisodes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodeCell") as! GOTTableViewCell
        cell.setEpisode(episode: episode)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
}


//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
