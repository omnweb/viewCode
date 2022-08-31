//
//  ViewController.swift
//  ViewCode
//
//  Created by Ovidio Matiazi Neto on 16/08/22.
//

import UIKit
import SnapKit

class HomeViewController: UITableViewController {
    let electionSpecialCardView = ElectionSpecialCardView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
}

extension HomeViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return electionSpecialCardView
    }
    
    
}
