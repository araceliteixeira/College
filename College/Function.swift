//
//  Function.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Function {
    
    private var functionId: Int
    private var description: String
    
    init(){
        functionId = 0
        description = ""
    }
    init(functionId: Int, description: String) {
        self.functionId = functionId
        self.description = description
    }
    func getFunctionId() -> Int {
        return functionId
    }
    func getDescription() -> String {
        return description
    }
    func setFunctionId(_ functionId:Int) {
        self.functionId = functionId
    }
    func setDescription(_ description:String) {
        self.description = description
    }

}