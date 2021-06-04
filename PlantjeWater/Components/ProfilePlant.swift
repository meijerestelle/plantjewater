//
//  ProfilePlant.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 04/06/2021.
//

import SwiftUI

struct ProfilePlant: View {
    var body: some View {
        VStack {
            Image("PlantFlip")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            Text("Flip")
                .font(.title3)
                .fontWeight(.bold)
            
            Text("Avocado Plant")
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.white)
        .modifier(CardModifier())
        .padding()
    }
}

struct ProfilePlant_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePlant()
    }
}
