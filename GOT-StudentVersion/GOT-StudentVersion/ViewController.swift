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
        loadData()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func loadData() {
        self.gotEpisodes = GOTEpisode.allEpisodes
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gotEpisodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let episode = gotEpisodes[indexPath.row]
        var cell: GOTTableViewCell
        
        if episode.season % 2 != 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "EpisodeCell") as! GOTTableViewCell
            cell.setEpisode(episode: episode)

        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "EpisodeCell2") as! GOTTableViewCell
            cell.setEpisode(episode: episode)
        }
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(130)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination
        switch segue.identifier! {
        case "GOTDetailSegue1":
            if let destination = segue.destination as? GOTDetailViewController {
                destination.episode = gotEpisodes[tableView.indexPathForSelectedRow!.row]
            }
        case "GOTDetailSegue2":
            if let destination = segue.destination as? GOTDetailViewController {
                destination.episode = gotEpisodes[tableView.indexPathForSelectedRow!.row]
            }
        default:
            fatalError()
        }
        // Pass the selected object to the new view controller.
    }
    
}

