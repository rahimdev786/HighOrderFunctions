//
//  ViewController.swift
//  HighOrderFunctions
//
//  Created by arshad on 4/22/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        map()
        filter()
        flatMap()
        compactmap()
        splitStringIntoArray()
    }


}

extension ViewController{
    
    //MARK: - Map is use to add each elemnts in array
    
    func map(){
        let namesOfstudent = ["Shaik","bashs","Naresh"]
        let name = "Please add Surname"
        let mapNames = namesOfstudent.map({name+" "+$0})
        print(mapNames)
    }
    
    
    //MARK: - Filter is use to filter each elemnts in array
    func filter(){
        
        let findLeapYear = [1990,1994,1998,2004,2008,2012,2020,2024,2028,1890,5,7]
           
        var leap = findLeapYear.filter { $0 % 4 == 0}
        
        print(leap)
        
        var evenNumber = findLeapYear.filter({$0%2 != 0})
        print(evenNumber)
        
        
    }
    
    func flatMap(){
        var flatmaps = [[1,2,3,45,90],[98,23,45,66,12,1],[200,33,44,5223,5678,12321],[09873,12441,132,4457454],[0968,1281,987118]]
        
        
        var flat = flatmaps.flatMap({$0})
        print(flat)
    }
    
    
    func compactmap(){
        var data = [[1,2,3,45,90,nil,nil],[98,23,nil,45,66,12,1],[200,nil,33,nil,44,5223,5678,12321],[09873,12441,nil,132,4457454]]
        
        //Reduce nill in array not in array inside array
        //first merge all data into array with flatmap then delete nil with compact map
        let compacts = data.flatMap({$0}).compactMap({$0})
     
        let coins = ["1", "5", "$", "10", "6"]
     // compact map also use for remove unwanted data as well as conversions
      let convertStringToInt =   coins.compactMap { coin in
            Int(coin)
        }
        
        print(compacts)
        print(convertStringToInt)
        
    }
    
    func splitStringIntoArray(){
        
        var greeting = "Hello,world"
        var greeting2 = "Hello world"
        
        let data1 = greeting.components(separatedBy:",")
        print(data1)
        
        let data2 = greeting2.components(separatedBy:" ")
        print(data2)
        print(data2[0])
        print(data2[1])
       
        let splitArrayIntoStr = greeting.split(separator: ",")
       print(splitArrayIntoStr)
        print(splitArrayIntoStr[0])
    }
    
    
    //MARK: - joins Different Data
    func joins(){
     
        var v1 = [1,2,3,4]
        var v2 = [10,20,30]
        
        
    }
}
