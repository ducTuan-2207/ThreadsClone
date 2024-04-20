//
//  AuthServicce.swift
//  ThreadsClone
//
//  Created by macOS on 20/04/2024.
//

import Foundation
import Firebase

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    static let share = AuthService()
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String , password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: created user\(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String , password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: created user\(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user error \(error.localizedDescription)")
        }
    }
    func signOut(){
        try? Auth.auth().signOut() // signs out on backend
        self.userSession = nil // this remove session locally and update and upadate routing
    }
}
