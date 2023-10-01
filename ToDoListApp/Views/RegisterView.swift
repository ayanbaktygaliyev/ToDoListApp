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
    
    
    var body: some View {
        VStack{
            
            HeaderView(title: "Register", subtitle: "Organize the things", background: .orange, angle: 15)
            
            Form {
                TextField("Full Name", text: $name)
                TextField("Email Address", text: $email)
                SecureField("Password", text: $password)
                
                TLButton(title: "Create account", background: .green) {
                    //registration
                }
            }
        }
        .offset(y: -50)
        .padding()
        
        VStack {
            Text("Already have an account?")
            
            NavigationLink("Log in", destination: LogInView())
        }.padding(.bottom, 50)
        
        Spacer()
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
