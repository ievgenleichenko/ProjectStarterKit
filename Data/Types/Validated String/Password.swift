//
//  Password.swift
//  AhoyCustomer
//
//  Created by Евгений on 5/7/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

typealias Password = ValidatedString<PasswordValidator>

struct PasswordValidator: StringValidator {
    
    static func validate(_ password: String) -> String? {
        // password must be more than 6 characters, with at least one capital, numeric or special character
        let passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=*])(?=\\S+$).{6,}$"
        
        guard NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: password) else { return nil }
        return password
    }
}
