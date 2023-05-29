//
//  MonthConsistencyCellCollectionViewCell.swift
//  Progress
//
//  Created by Gourav Kumar on 30/05/23.
//

import UIKit

class MonthConsistencyCell: UICollectionViewCell {
    
    let tableView = UITableView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.frame = self.frame
        addSubview(tableView)
        
    }

}
