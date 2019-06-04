//
//  APIErrorParsing.swift
//
//  Created by Евгений
//

import Foundation

protocol APIErrorParsing {
    
    func parse(response: HTTPURLResponse, data: Data?) -> APIError?
}
