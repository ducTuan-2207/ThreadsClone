//
//  RegistrationViewModel.swift
//  ThreadsClone
//
//  Created by macOS on 20/04/2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published  var email = ""
    @Published  var password = ""
    @Published  var fullname = ""
    @Published  var username = ""
    
    @MainActor // tránh các vấn đề về đồng bộ và cải thiện hiệu suất
    func createUser() async throws {
        try await
        AuthService.share.createUser(
            withEmail: email,
            password: password,
            fullname: fullname,
            username: username)
    }
}
