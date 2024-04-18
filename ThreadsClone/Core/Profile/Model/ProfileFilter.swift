//
//  ProfileFilter.swift
//  ThreadsClone
//
//  Created by macOS on 17/04/2024.
//

import Foundation

enum ProfileFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
//    case likes
    var titile: String {
        switch self {
        case.threads: return "Threads"
        case.replies: return "Replies"
//        case.likes: return "Likes"
        }
    }
    var id: Int {
        return self.rawValue
    }
}
