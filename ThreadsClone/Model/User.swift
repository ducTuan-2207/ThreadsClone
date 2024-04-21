//
//  File.swift
//  ThreadsClone
//
//  Created by macOS on 21/04/2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    
    var profileImageUrl: String?
    var bio: String?
    
}
