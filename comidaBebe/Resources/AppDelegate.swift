//
//  AppDelegate.swift
//  comidaBebe
//
//  Created by Juan Macias on 1/15/24.
//

import UIKit
import Swinject

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        registerServices()
        
        return true
    }
    
    private func registerServices() {
        Container.shared.register(Store.self) { _ in
                UserDefaults.standard
            }
    }
}

