//
//  Customer.swift
//  C0751598_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
//Customer Id, first name, last name, full name, email id, Bill Dictionary to store all types of bills
//and Total amount to pay


class Customer{
    
    var customerId:Int = Int()
    var firstName:String = String()
    var lastName:String = String()
    var emailId:String = String()
    var bills = [Int: Bill]()
    var totalAmountToBePaid: Float {
        get {
            var sum:Float = 0.0
            for bill in bills {
            sum = sum + bill.value.totalBillAmount
            }
            return sum
        }
    }
    
    init(customerId : Int, firstName : String, lastName : String, emailId : String, bills : [Int: Bill]?) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        self.bills = bills!
    }
    
    func addMoreBills(newBills : [Int: Bill]){
        for bill in newBills {
           bills[bill.key] = bill.value
        }
    }
    
   
    
}

