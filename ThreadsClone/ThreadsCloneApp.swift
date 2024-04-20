//
//  ThreadsCloneApp.swift
//  ThreadsClone
//
//  Created by macOS on 15/04/2024.
//

import SwiftUI
import FirebaseCore 

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure() // Cấu hình FirebaseApp khi ứng dụng khởi chạy
        return true
    }
}

@main
struct ThreadsCloneApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate // Sử dụng @UIApplicationDelegateAdaptor để kết nối AppDelegate với ứng dụng
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
