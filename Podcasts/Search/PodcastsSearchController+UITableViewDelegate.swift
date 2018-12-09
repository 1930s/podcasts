//
//  PodcastsSearchController+UITableView.swift
//  Podcasts
//
//  Created by Elias Myronidis on 09/12/2018.
//  Copyright © 2018 eliamyro. All rights reserved.
//

import UIKit

extension PodcastsSearchController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let podcast = podcasts[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = "\(podcast.name) \n\(podcast.artistName)"
        cell.imageView?.image = #imageLiteral(resourceName: "appicon")
        
        return cell
    }
}
