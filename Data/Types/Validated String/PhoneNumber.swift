//
//  Phone.swift
//  AhoyCustomer
//
//  Created by Евгений on 5/7/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation
import libPhoneNumber_iOS

typealias PhoneNumber = ValidatedString<PhoneNumberValidator>

struct PhoneNumberValidator: StringValidator {
    
    static func validate(_ phoneNumber: String) -> String? {
        let ignoredCharacters = CharacterSet(charactersIn: " -()")
        let phoneNumber = phoneNumber.components(separatedBy: ignoredCharacters).joined(separator: "")
        let phoneRegex = "^(\\+)[0-9]{6,14}$"

        guard NSPredicate(format: "SELF MATCHES %@", phoneRegex).evaluate(with: phoneNumber) else { return nil }
        
        let phoneUtil = NBPhoneNumberUtil()
        // Use 'ZZ' as 'defaultRegion', because 'phoneRegex' guarantees that 'phoneNumber' starts with '+' (according to documentation)
        guard let number = try? phoneUtil.parse(phoneNumber, defaultRegion: "ZZ"),
            phoneUtil.isValidNumber(number) else {
            return nil
        }
        
        return phoneNumber
    }
}
