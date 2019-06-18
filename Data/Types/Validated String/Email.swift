//
//  Email.swift
//  AhoyCustomer
//
//  Created by Евгений on 5/7/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

typealias Email = ValidatedString<EmailValidator>

struct EmailValidator: StringValidator {
    
    static func validate(_ email: String) -> String? {
        let email = email.trimmingCharacters(in: .whitespacesAndNewlines)
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        guard NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: email) else { return nil }
        return email
    }
}
