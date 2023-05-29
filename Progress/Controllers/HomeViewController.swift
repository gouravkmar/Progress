//
//  HomeViewController.swift
//  Progress
//
//  Created by Gourav Kumar on 29/05/23.
//

import UIKit

class HomeViewController: UIViewController {
    let tableView = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    
    func setupTableView(){
        tableView.frame = self.view.bounds
        
    }
    


}
