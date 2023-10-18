//
//  LogInView.swift
//  ToDoListApp
//
//  Created by Ayan Baktygaliyev on 9/28/23.
//

import SwiftUI

struct LogInView: View {
    
    @StateObject var viewModel = LogInViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                //header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", background: .pink, angle: 15)
                
                
                //login form
                
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In",
                             background: .blue
                    ) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                //create account
                
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an account", destination: RegisterView())
                }
                
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}


struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
