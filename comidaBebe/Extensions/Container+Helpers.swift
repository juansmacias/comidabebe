//
//  Container+Helpers.swift
//  CalculoPesos
//
//  Created by Juan Macias on 21/09/23.
//

import Swinject

extension Container {
    static let shared = Container()
    
    static var store:Store {
        shared.resolve(Store.self)!
    }
}
