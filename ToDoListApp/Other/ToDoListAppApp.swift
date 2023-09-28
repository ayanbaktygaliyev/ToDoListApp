//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Ayan Baktygaliyev on 9/28/23.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
