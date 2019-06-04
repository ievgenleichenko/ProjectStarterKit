//
//  APIError.swift
//
//  Created by Евгений
//

import Foundation

protocol APIError: Error {
    
    var statusCode: Int { get }
    var message: String { get }
}
