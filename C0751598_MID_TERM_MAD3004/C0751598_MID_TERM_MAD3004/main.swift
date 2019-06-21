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



Customer Id : 2
Customer Full Name : Vipul Garg
Customer Email ID : adurrant1@github.io
---- Bill Information ----
******************************************
Bill Id : 1
Bill Date : Wednesday, 19 June, 2019
Bill Type : Hydro
Bill Amount : $45.35
Agency Name : Planet Energy
Unit Consumed : 29 Units
******************************************
Bill Id : 1
Bill Date : Wednesday, 19 June, 2019
Bill Type : Internet
Bill Amount : $56.50
Provider Name : Rogers
Internet Usage : 500 GB
******************************************
Bill Id : 1
Bill Date : Thursday, 24 January, 2019
Bill Type : Mobile
Bill Amount : $250.69
Manufacturer Name : Galaxy Samsung Inc.
Plane Name : Prepaid Talk + Text plan
Mobile Number : +11234567890
Internet Usage : 5 GB
Minutes Usage : 356 minutes
******************************************
Bill Id : 1
Bill Date : Wednesday, 19 June, 2019
Bill Type : Mobile
Bill Amount : $300.78
Manufacturer Name : Apple Inc. iPhone X MAX+
Plane Name : LTE+3G 9.5GB Promo plan
Mobile Number : +19012345678
Internet Usage : 4 GB
Minutes Usage : 230 minutes
******************************************
Total Bill Amount to Pay :$653.32
******************************************
