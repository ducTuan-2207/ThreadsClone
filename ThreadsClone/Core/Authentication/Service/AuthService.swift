//
//  AuthServicce.swift
//  ThreadsClone
//
//  Created by macOS on 20/04/2024.
//

import Foundation
import Firebase

class AuthService {
    
    static let share = AuthService()
    
    @MainActor
    func login(withEmail email: String , password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String , password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: created user\(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user error \(error.localizedDescription)")
        }
    }
}
