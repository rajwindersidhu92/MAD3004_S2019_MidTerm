//
//  main.swift
//  C0751598_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation


extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}


var bill1 = Hyro(agencyName : "Planet Energy", unitConsumed : 29.0, billId: 1, billDate: Date() , billType: "Hydro", totalbillAmount: 45.35)

var cutomer1 = Customer(customerId :1, firstName :"Pritesh", lastName : "Patel", emailId : "amallabyg@topsy.com", bills: [1 : bill1])

var bill2 = Internet(internetGBUsed : 500.0, providerName : "Rogers", billId : 2, billDate : Date(), billType : "Internet", totalbillAmount : 56.50)

cutomer1.addMoreBills(newBills: [2 : bill2])

var cutomer2 = Customer(customerId :2, firstName :"Vipul", lastName : "Garg", emailId : "adurrant1@github.io", bills: [1 : bill1])

cutomer2.addMoreBills(newBills: [2 : bill2])

var bill3 = Mobile(mobileManufacturerName : "Galaxy Samsung Inc.", planName : "Prepaid Talk + Text plan", mobileNumber : "1234567890", internetGBUsed : 5.0 , minuteUsed : 356.0, billId: 3, billDate: Date(), billType: "Mobile", totalbillAmount: 250.69)

var bill4 = Mobile(mobileManufacturerName : "Apple Inc. iPhone X MAX+", planName : "LTE+3G 9.5GB Promo plan", mobileNumber : "9012345678", internetGBUsed :  4.0 , minuteUsed : 230.0, billId: 4, billDate: Date(), billType: "Mobile", totalbillAmount: 300.78)

cutomer2.addMoreBills(newBills: [3 : bill3])
cutomer2.addMoreBills(newBills: [4 : bill4])


print("Coustomer Details")
print("****************")
print("Customer Id :\(cutomer1.customerId)")
print("Customer full name :\(cutomer1.firstName) \(cutomer1.lastName)")
print("Customer Email Id :\(cutomer1.emailId) ")
print("---- Bill Information ----")
print("***************************************")
print("Bill Id :\(String(describing: cutomer1.bills.first?.value.billId))")
print("Bill Date : \(String(describing: cutomer1.bills.first?.value.billDate))")
print("Bill Type : \(String(describing: cutomer1.bills.first?.value.billType))")
print("Bill Amount : \(String(describing: cutomer1.bills.first?.value.totalBillAmount))")
if let c = cutomer1.bills.first?.value as? Hyro{
    print("Agency Name :\(c.agencyName)")
    print("Unit Consumed :\(c.unitConsumed) Units" )
    
}
print("***************************************")
print("Bill Id :\(String(describing: cutomer1.bills[2]!.billId))")
print("Bill Date : \(String(describing: cutomer1.bills[2]!.billDate))")
print("Bill Type : \(String(describing: cutomer1.bills[2]!.billType))")
print("Bill Amount : \(String(describing: cutomer1.bills[2]!.totalBillAmount))")
if let c = cutomer1.bills[2] as? Internet{
    print("Agency Name :\(c.providerName)")
    print("Unit Consumed :\(c.internetGBUsed) Units" )
}
print("***************************************")
print("Total Bill Amount To be paid : \(cutomer1.totalAmountToBePaid)")
print("***************************************")


