//
//  LogInViewViewModel.swift
//  ToDoListApp
//
//  Created by Ayan Baktygaliyev on 9/28/23.
//

import Foundation
import FirebaseAuth

class LogInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        //try to log in
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool {
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please write down everything"
            return false
        }
        
        
        //email
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please, enter a valid email"
            return false
        }
        
        return true
    }
    
    
}
