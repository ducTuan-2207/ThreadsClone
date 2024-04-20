//
//  ThreadsCloneApp.swift
//  ThreadsClone
//
//  Created by macOS on 15/04/2024.
//

import SwiftUI
//import Firebase
import FirebaseCore
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main
struct ThreadsCloneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
