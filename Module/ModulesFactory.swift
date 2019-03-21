//
//  ModulesFactory.swift
//  Quickly
//
//  Created by Евгений on 2/13/19.
//  Copyright © 2019 yevgeniy. All rights reserved.
//

import Foundation
import UIKit

class ModulesFactory {
    
    private let servicesFactory = ServicesFactory.shared
    
    // MARK: - Singleton -
    
    static let shared: ModulesFactory = ModulesFactory()
    private init() {}
    
    // MARK: - Public -
    
    
}
