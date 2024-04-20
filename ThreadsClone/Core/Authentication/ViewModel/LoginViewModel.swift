//
//  LoginViewModel.swift
//  ThreadsClone
//
//  Created by macOS on 20/04/2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published  var email = ""
    @Published  var password = ""
    
    @MainActor
    func login() async throws {
        try await
        AuthService.share.login(
            withEmail: email,
            password: password)
    }
}
