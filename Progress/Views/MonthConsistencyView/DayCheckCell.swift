//
//  DayCheckCell.swift
//  Progress
//
//  Created by Gourav Kumar on 29/05/23.
//

import UIKit

class DayCheckCell: UICollectionViewCell {
    var isActivityDone : Bool = false {
        didSet{
            checkBoxView.backgroundColor = isActivityDone ? UIColor.green : UIColor.lightGray
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBOutlet weak var checkBoxView: UIView!

    
}
