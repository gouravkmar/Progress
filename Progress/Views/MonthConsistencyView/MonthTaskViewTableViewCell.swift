//
//  MonthTaskViewTableViewCell.swift
//  Progress
//
//  Created by Gourav Kumar on 29/05/23.
//

import UIKit

class MonthTaskViewTableViewCell: UITableViewCell {
    let stackView = UIStackView()
    let taskName = UILabel()
    let fraction = UILabel()
    let fractionWidth = 100.0
    var monthCheckBoxView : MonthCheckBoxView?
    var monthlyTaskData : MonthlyTaskData?{
        didSet{
            setupTableViewCell()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        stackView.frame = self.bounds
        self.addSubview(stackView)
    }
    
    func setupTableViewCell(){
        if let task = monthlyTaskData {
            taskName.text = task.taskName
            fraction.text = task.completionFraction
            let frame = CGRect(x: task.titleWidth, y: 0, width: self.frame.width - task.titleWidth - fractionWidth, height: self.frame.height)
            self.monthCheckBoxView = MonthCheckBoxView(frame: frame, completion: task.completion, totalDays: task.totalDays)
            
            stackView.addArrangedSubview(taskName)
            stackView.addArrangedSubview(monthCheckBoxView!)
            stackView.addArrangedSubview(fraction)
        }
    }
    
    struct MonthlyTaskData {
        let taskName : String
        let completionFraction : String
        let completion : Int
        let totalDays : Int
        let titleWidth : Double
        init(taskName: String, completion: Int,totalDays: Int ,titleWidth: Double) {
            self.taskName = taskName
            self.completionFraction = "\(completion)/\(totalDays)"
            self.completion = completion
            self.titleWidth = titleWidth
            self.totalDays = totalDays
            
        }
    }


}
