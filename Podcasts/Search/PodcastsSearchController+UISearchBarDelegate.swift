//
//  PodcastsSearchController+UISearchControllerDelegate.swift
//  Podcasts
//
//  Created by Elias Myronidis on 09/12/2018.
//  Copyright © 2018 eliamyro. All rights reserved.
//

import UIKit
import Alamofire

extension PodcastsSearchController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        
        let url = "https://itunes.apple.com/search?term=\(searchText)"
        
        Alamofire.request(url).responseData { (dataResponse) in
            if let error = dataResponse.error {
                print("Failed to contact yahoo.com", error.localizedDescription)
                return
            }
            
            guard let data = dataResponse.data else { return }
            let dataString = String(data: data, encoding: .utf8)
            print(dataString ?? "")
        }
    }
}
