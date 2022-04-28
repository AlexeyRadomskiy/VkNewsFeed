//
//  UserResponse.swift
//  VkNewsFeed
//
//  Created by Alexey on 28.04.2022.
//

import Foundation

struct UserResponseWrapped: Decodable {
    let response: [UserResponse]
}

struct UserResponse: Decodable {
    let photo100: String?
}
