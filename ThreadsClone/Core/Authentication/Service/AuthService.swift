//
//  AuthServicce.swift
//  ThreadsClone
//
//  Created by macOS on 20/04/2024.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

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
//            print("DEBUG: created user\(result.user.uid)")
            try await uploadUserData(withEmail: email, fullname: fullname, username: username, id: result.user.uid)
        } catch {
            print("DEBUG: Failed to create user error \(error.localizedDescription)")
        }
    }
    func signOut(){
        try? Auth.auth().signOut() // signs out on backend
        self.userSession = nil // this remove session locally and update and upadate routing
    }
    @MainActor
    private func uploadUserData(withEmail email: String ,
                                fullname: String,
                                username: String,
                                id: String)
    async throws {
        let user = User(id: id, fullname: fullname, email: email, username: username)
        guard let userData = try? Firestore.Encoder().encode(user) else {return}
        // try? nếu có lỗi trong quá trình thực thi thì swift sẽ trả về một giá trị nil thay vì ném ra một ngoại lệ
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        
    }
    
}
