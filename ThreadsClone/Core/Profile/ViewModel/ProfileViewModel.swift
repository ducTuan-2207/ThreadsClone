//
//  ProfileViewModel.swift
//  ThreadsClone
//
//  Created by macOS on 22/04/2024.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    @Published var currentUser: User?
    private var cancelables = Set<AnyCancellable>()
    init() {
        
    }
    private func setupSubcribers(){
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            print("DEBUG: User in view model from combine in \(user)")
        }.store(in: &cancelables)
        
    }
}
