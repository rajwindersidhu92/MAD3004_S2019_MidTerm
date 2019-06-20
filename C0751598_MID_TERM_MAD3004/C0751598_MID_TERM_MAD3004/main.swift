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

