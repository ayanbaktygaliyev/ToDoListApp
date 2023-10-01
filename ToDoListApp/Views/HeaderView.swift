//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Ayan Baktygaliyev on 9/28/23.
//

import SwiftUI

struct HeaderView: View{
    let title: String
    let subtitle: String
    let background: Color
    let angle: Double
    
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: 15))
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
                    .bold()
            }
            .padding(.top, 80)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "subtitle", background: .blue, angle: 15)
    }
}
