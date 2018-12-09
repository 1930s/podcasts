//
//  PodcastsSearchController+UISearchControllerDelegate.swift
//  Podcasts
//
//  Created by Elias Myronidis on 09/12/2018.
//  Copyright © 2018 eliamyro. All rights reserved.
//

import UIKit

extension PodcastsSearchController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        
        // TODO: Implement Alamofire to searh iTunes API
    }
}
