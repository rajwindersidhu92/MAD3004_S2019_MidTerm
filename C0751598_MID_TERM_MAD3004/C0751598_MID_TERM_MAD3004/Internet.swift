//
//  Internet.swift
//  C0751598_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet: Bill {
    var internetGBUsed:Float = 0
    var providerName:String = String()
    
    init(internetGBUsed: Float, providerName: String, billId: Int, billDate: Date, billType: String, totalbillAmount: Float) {
        super.init(billId: <#T##Int#>, billDate: <#T##Date#>, billType: <#T##String#>, totalBillAmount: <#T##Float#>)
        self.internetGBUsed = internetGBUsed
        self.providerName = providerName
    }
    
    func updateInternetGBUsed(dataUsed: Float) {
        self.internetGBUsed = self.internetGBUsed + dataUsed
    }
    
    
    override func printDetails() {
        print("Internet GB Used  is : \(String(self.internetGBUsed))")
        print("Intenert Provider Name is : \(String(self.providerName))")
        super.printDetails()
    }

}

