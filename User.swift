//
//  User.swift
//  ToDoList
//
//  Created by sarthak sharma on 19/06/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
} 
