//
//  AppDelegate.swift
//  TroisEcransJeu
//
//  Created by Etudiant on 06/12/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        window.rootViewController = UINavigationController(rootViewController: PseudoViewController())
        
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }


}

