//
//  DayDataModel.swift
//  Progress
//
//  Created by Gourav Kumar on 29/05/23.
//

import Foundation

struct DaydataModel {

    var dayTasks : [TaskDataModel]
    let date : Date
    
}
struct TaskDataModel{
    
    let completedTask : Bool
    let isQuantitative : Bool
    let value : Float?
    let totalValue : Float?
    let startDate : Date
    let endDate : Date?
}


