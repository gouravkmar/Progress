//
//  ConsistencyViewTableViewCell.swift
//  Progress
//
//  Created by Gourav Kumar on 29/05/23.
//

import UIKit

class ConsistencyViewTableViewCell: UITableViewCell {
    let allMonthCollectionView = UICollectionView()
    override func awakeFromNib() {
        super.awakeFromNib()
        allMonthCollectionView.frame = self.bounds
        self.addSubview(allMonthCollectionView)
    }
    
}
