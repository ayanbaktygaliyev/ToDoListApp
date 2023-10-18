//
//  TLButton.swift
//  ToDoListApp
//
//  Created by Ayan Baktygaliyev on 10/2/23.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: ()->Void
    
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .bold()
                    .foregroundColor(Color.white)
            }
            .padding()

        }
            }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", background: .pink){
            
        }
    }
}
