//
//  SwiftAuthentificationApp.swift
//  SwiftAuthentification
//
//  Created by Leo Chen on 2023-04-26.
//

import SwiftUI
import Firebase

@main
struct SwiftAuthentificationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    init()
    {
        FirebaseApp.configure()
        print("configuration faite")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      print("configuration avec AppDelgate")
    return true
  }
}
