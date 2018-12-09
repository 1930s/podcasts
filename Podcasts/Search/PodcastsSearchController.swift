//
//  PodcastsSearchController.swift
//  Podcasts
//
//  Created by Elias Myronidis on 09/12/2018.
//  Copyright © 2018 eliamyro. All rights reserved.
//

import UIKit

class PodcastsSearchController: UITableViewController {
    
    let cellId = "cellId"
    
    let podcasts = [
        Podcast(name: "Lets build that app", artistName: "Brian Voong"),
        Podcast(name: "Lets learn iOS", artistName: "Elias Myro")
    ]
    
    
    // MARK: - Views
    
    lazy var searchController: UISearchController = {
        let sc = UISearchController(searchResultsController: nil)
        sc.dimsBackgroundDuringPresentation = false
        sc.searchBar.delegate = self
        
        return sc
    }()
    
    
    // MARK: - UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupSearchBar()
    }
    
    
    // MARK: - PodcastsSearchController Methods
    
    private func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
}
