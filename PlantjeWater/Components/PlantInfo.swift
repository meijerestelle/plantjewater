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
                .frame(width: 50, height: 50
                       , alignment: .center)
        
        
            VStack(alignment: .leading){
                Text("Jan")
                    .font(.title3)
                    .fontWeight(.bold)
                  
                Text("Doe maar mij maar een glaasje van 125ml")
            }
            .padding(.horizontal)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "plus.circle.fill")
            })
            
            
        }
        .frame(minWidth: 300, idealWidth: .infinity, maxWidth: .infinity, minHeight: 80, idealHeight: 100, maxHeight: 100, alignment: .center)
        .padding()
    }
}

struct PlantInfo_Previews: PreviewProvider {
    static var previews: some View {
        PlantInfo()
    }
}
