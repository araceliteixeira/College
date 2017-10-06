//
//  Status.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Status {
    
    private var statusId: Int
    private var description: String
    
    init(){
        statusId = 0
        description = ""
    }
    init(statusId: Int, description: String) {
        self.statusId = statusId
        self.description = description
    }
    func getStatusId() -> Int {
        return statusId
    }
    func getDescription() -> String {
        return description
    }
    func setStatusId(_ statusId:Int) {
        self.statusId = statusId
    }
    func setDescription(_ description:String) {
        self.description = description
    }

}
