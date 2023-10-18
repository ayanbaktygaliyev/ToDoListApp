//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Ayan Baktygaliyev on 9/28/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    @State var showView = false
    
    var body: some View {
        VStack{
            
            HeaderView(title: "Register", subtitle: "Organize the things", background: .orange, angle: 15)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account",
                         background: .green
                ) {
                    print("create account button!")
                    //registration
                }
            }
            .offset(y: -100)
        }
        .padding()

        
        VStack {
            Text("Already have an account?")
            
            NavigationLink("Log In", destination: LogInView())
        }
        .padding(.bottom, 50)
        
        Spacer()
    }
}

struct DescView: View {
    @Binding var showView: Bool
    var body: some View {
        Button(action: {self.showView = false}){
            Text("Pop Screen")
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
