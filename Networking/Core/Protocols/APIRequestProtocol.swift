//
//  APIRequestProtocol.swift
//
//  Created by Евгений
//

import Foundation

protocol APIRequestProtocol {
    
    var endpoint: String { get }
    var method: Method { get }
    var parameters: [String: Any] { get }
    var headers: [String: String] { get }
}

extension APIRequestProtocol {
    
    var method: Method { return .get }
    var parameters: [String: Any] { return [:] }
    var headers: [String: String] { return [:] }
}
