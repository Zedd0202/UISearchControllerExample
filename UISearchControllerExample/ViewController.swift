//
//  ViewController.swift
//  UISearchControllerExample
//
//  Created by Zedd on 2021/01/07.
//

import UIKit

class ViewController: UIViewController {

    var arr = ["Zedd", "Alan Walker", "David Guetta", "Avicii", "Marshmello", "Steve Aoki", "R3HAB", "Armin van Buuren", "Skrillex", "Illenium", "The Chainsmokers", "Don Diablo", "Afrojack", "Tiesto", "KSHMR", "DJ Snake", "Kygo", "Galantis", "Major Lazer", "Vicetone"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let resultViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ResultViewController") as! ResultViewController
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Search Dj"
        searchController.searchBar.scopeButtonTitles = [
            "안녕", "하세요", "Zedd", "입니다"
        ]
        searchController.searchBar.scopeBarBackgroundImage = UIImage(systemName: "heart")
        
        searchController.searchBar.showsScopeBar = true
        searchController.automaticallyShowsScopeBar = true

        self.navigationItem.searchController = searchController

        self.navigationItem.title = "Search"
        
        //self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.navigationItem.hidesSearchBarWhenScrolling = false
        
        
//        self.tableView.delegate = self
//        self.tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arr.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.arr[indexPath.row]
        return cell
    }
    
}

