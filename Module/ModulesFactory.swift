//
//  ModulesFactory.swift
//
//  Created by Евгений
//

import UIKit

class ModulesFactory {
    
    private let servicesFactory = ServicesFactory.shared
    
    // MARK: - Singleton -
    
    static let shared: ModulesFactory = ModulesFactory()
    private init() {}
    
    // MARK: - Public -
    
    
}
