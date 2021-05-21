//
//  PlantInfo.swift
//  PlantjeWater
//
//  Created by Jelien Bakker on 21/05/2021.
//

import SwiftUI

struct PlantInfo: View {
    var body: some View {
        
        HStack{
            Image("PlantJan")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70
                       , alignment: .center)
        
        
            VStack(alignment: .leading){
                Text("Jan")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("SecondaryColor"))
                  
                Text("Doe maar mij maar een glaasje van 125ml")
                    .font(.subheadline)
            }
            .padding(.horizontal,5)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 40))
            })
            
            
        }
        .frame(minWidth: 300, idealWidth: .infinity, maxWidth: .infinity, minHeight: 80, idealHeight: 80, maxHeight: 80, alignment: .center)
        .padding()
        .background(Color(.white))
        .modifier(CardModifier())
        .padding()
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x:0, y:0)
    }
}

struct PlantInfo_Previews: PreviewProvider {
    static var previews: some View {
        PlantInfo()
    }
}
