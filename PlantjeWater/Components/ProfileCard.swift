//
//  ProfileCard.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 04/06/2021.
//

import SwiftUI

struct ProfileCard: View {
    var body: some View {
        HStack {
            Image("profilepic")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .cornerRadius(50)
            
            VStack(alignment: .leading) {
                Text("Estèlle")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("mother of 3")
                
                Text("\"Plant!\"")
                    .italic()
                    .padding(.top)
            }
            .padding()
            
            Spacer()
        }
        .padding(20.0)
        .background(Color("SecondaryColor"))
        .foregroundColor(.white)
        .modifier(CardModifier())
        .padding(.horizontal)
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}
