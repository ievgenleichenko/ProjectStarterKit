//
//  APIError.swift
//  PassportScan
//
//  Created by Евгений on 3/22/19.
//  Copyright © 2019 Евгений. All rights reserved.
//

import Foundation

protocol APIError: Error {
    
    var statusCode: Int { get }
    var message: String { get }
}
