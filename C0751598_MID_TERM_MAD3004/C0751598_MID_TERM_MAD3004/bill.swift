//
//  bill.swift
//  C0751598_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Bill: IDisplay{
    
    var billId:Int = 0
    var billDate:Date = Date()
    var billType:String = String()
    var totalBillAmount:Float = 0
    

    init(billId: Int, billDate:Date,billType: String,totalBillAmount: Float ) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    
    func updateTotalBillAmount(amountIncreasedBy: Float) {
       self.totalBillAmount = self.totalBillAmount + amountIncreasedBy
    }
    
    func printDetails() {
        print("Bill Id is : \(String(self.billId))")
        print("Bill Date is : \(self.billDate)")
        print("Bill Type is : \(String(self.billType))")
        print("Total Bill Amount is : \(String(self.totalBillAmount))")
    }
    
}
    

