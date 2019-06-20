//
//  Hydro.swift
//  C0751598_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//
import Foundation

class Hyro: Bill {
    var agencyName:String = String()
    var unitConsumed:Float = 0.0
    
    init(agencyName : String, unitConsumed : Float, billId: Int, billDate: Date, billType: String, totalbillAmount: Float) {
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalbillAmount)
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
    
    }
    
    func updateUnitConsumed(unitConsumed: Float) {
        self.unitConsumed = self.unitConsumed + unitConsumed
    }
    
    
    override func printDetails() {
        print("Hydro Units Consumed  is : \(String(self.unitConsumed))")
        super.printDetails()
    }
    
}
