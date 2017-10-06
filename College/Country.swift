//
//  Country.swift
//  CollegeProject
//
//  Created by MacStudent on 2017-10-06.
//  Copyright © 2017 MacStudent. All rights reserved.
//

import Foundation

class Country {
    
    private var countryId: Int
    private var name: String
    
    init(){
        countryId = 0
        name = ""
    }
    init(countryId: Int, name: String) {
        self.countryId = countryId
        self.name = name
    }
    func getCountryId() -> Int {
        return countryId
    }
    func getName() -> String {
        return name
    }
    func setCountryId(_ countryId:Int) {
        self.countryId = countryId
    }
    func setName(_ name:String) {
        self.name = name
    }
}
