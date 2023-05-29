//
//  ConsistencyView.swift
//  Progress
//
//  Created by Gourav Kumar on 29/05/23.
//

import UIKit

class MonthCheckBoxView: UIView {

    let collectionView = UICollectionView()
    let totalDays : Int
    let completion : Int
    init(frame : CGRect , completion : Int , totalDays : Int) {
        self.totalDays = totalDays
        self.completion = completion
        super.init(frame: frame)
        collectionView.frame = frame
        self.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupCollectionView(){
        collectionView.dataSource = self
        collectionView.register(DayCheckCell.self, forCellWithReuseIdentifier: "cell")
    }
}

extension MonthCheckBoxView : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totalDays
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DayCheckCell
        cell.isActivityDone = indexPath.row < completion
        return cell
    }
}
