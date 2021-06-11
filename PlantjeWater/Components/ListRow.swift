//
//  ListRow.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 11/06/2021.
//

import SwiftUI

struct ListRow: View {
    
    var species: Species
    
    var body: some View {
        HStack {
            Image(species.image)
                .resizable()
                .frame(width: 75, height: 75)
            
            Text(species.name)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("SecondaryColor"))
                .padding(.leading, 10)
            
            Spacer()
            
            Button(action: {
                print("jippie")
            }, label: {
                Image(systemName: "plus")
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)         .stroke(Color.white, lineWidth: 2)
                    )
                    .imageScale(.small)
                    .padding(15)
                    .foregroundColor(.white)
                    .background(Color("AccentColor"))
                    .clipShape(
                        RoundedRectangle(
                            cornerSize: CGSize(width: 15, height: 15)))
            })
        }
        .padding()
        .background(Color.white)
        .modifier(CardModifier())
        .padding([.horizontal, .top])
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(species: speciesData[0])
    }
}
