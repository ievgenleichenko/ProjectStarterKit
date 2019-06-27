//
//  ValidatedString.swift
//  AhoyCustomer
//
//  Created by Евгений on 5/7/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

// Inspired by this article:
// https://medium.com/@gonzula/bringing-runtime-errors-to-compile-time-in-swift-with-types-74f8c87bd13d

import Foundation

protocol StringValidator {
    
    // Returns a sanitized string if the input is valid or nil otherwise
    static func validate(_ string: String) -> String?
}

struct ValidatedString<Validator: StringValidator> {
    
    let rawValue: String
    
    init?(_ rawValue: String) {
        guard let validated = Validator.validate(rawValue) else { return nil }
        
        self.rawValue = validated
    }
}
