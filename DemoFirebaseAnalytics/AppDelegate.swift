//
//  AppDelegate.swift
//  DemoFirebaseAnalytics
//
//  Created by Pawan  on 23/11/2020.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        FirebaseApp.configure()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = DemoAnalytics()
        window?.makeKeyAndVisible()
        return true
    }
}

