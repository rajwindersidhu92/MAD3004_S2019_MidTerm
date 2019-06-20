//
//  bill.swift
//  C0751598_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Bill{
    
    var billId:Int?
    var billDate:Date = Date()
    var billType:String = String()
    var totalBillAmount:Int?
    
    
    init(_: billId, _:billDate,_: billType,_: totalBillAmount ) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    
    
}
