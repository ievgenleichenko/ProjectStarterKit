//
//  Module.swift
//
//  Created by Евгений
//

import Foundation

class Module<PresenterType, InterfaceType> {
    
    private(set) var presenter: PresenterType
    private(set) var interface: InterfaceType
    
    init(presenter: PresenterType, interface: InterfaceType) {
        self.presenter = presenter
        self.interface = interface
    }
}
