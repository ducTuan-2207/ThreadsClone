//
//  ContentViewModel.swift
//  ThreadsClone
//
//  Created by macOS on 20/04/2024.
//

import Foundation
import Combine
import Firebase

class contentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User? // tự động phát ra sự kiện mỗi khi giá trị thay đổi
    
    // trong combine cancellable để theo dõi các đăng ký và huỷ đăng ký khi cần thiết, tránh rò rỉ bộ nhớ và quản lý vòng đời
    private var cancellable = Set<AnyCancellable>()
    
    
    init() {
        
    }
    private func setupSubscribers() {
        
        
//        AuthService().$userSession
        // Mỗi khi giá trị của AuthService.share.$userSession thay đổi, subscriber này sẽ nhận giá trị mới thông qua closure và gán nó cho thuộc tính userSession của lớp contentViewModel, đảm bảo rằng giá trị này được cập nhật và SwiftUI sẽ được thông báo về sự thay đổi
        AuthService.share.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }.store(in: &cancellable)
    }
}
