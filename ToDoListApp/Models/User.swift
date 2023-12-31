//
//  User.swift
//  ToDoListApp
//
//  Created by Ayan Baktygaliyev on 9/28/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let  joined: TimeInterval
}
