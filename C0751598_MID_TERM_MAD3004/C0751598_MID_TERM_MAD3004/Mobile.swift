//
//  Mobile.swift
//  C0751598_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Mobile: Bill {
    
    var mobileManufacturerName:String = String()
    var planName:String = String()
    var mobileNumber:String = String()
    var internetGBUsed:Float = 0.0
    var minuteUsed:Float = 0.0
    
    init(mobileManufacturerName : String, planName : String, mobileNumber : String, internetGBUsed : Float , minuteUsed : Float, billId: Int, billDate: Date, billType: String, totalbillAmount: Float) {
        super.init(billId: <#T##Int#>, billDate: <#T##Date#>, billType: <#T##String#>, totalBillAmount: Float)
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
    }
    
    func updateInternetGBUsed(dataUsed: Float) {
        self.internetGBUsed = self.internetGBUsed + dataUsed
    }
    
    
    override func printDetails() {
        print("Internet GB Used  is : \(String(self.internetGBUsed))")
        super.printDetails()
    }
    
}

