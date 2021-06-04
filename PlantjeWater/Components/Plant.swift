//
//  Plant.swift
//  PlantjeWater
//
//  Created by Jelien Bakker on 04/06/2021.
//

import SwiftUI

struct Plant: View {
    var name: String
    var description: String
    
    var body: some View {
        
        HStack{
            Image("PlantJan")
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70
                       , alignment: .center)
        
        
            VStack(alignment: .leading){
                Text(name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("SecondaryColor"))
                  
         
            }
            .frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .leading)
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
    }
}



struct Plant_Previews: PreviewProvider {
    static var previews: some View {
        Plant(name: "Jan", description: "Ik wil een glaasje van 125ml water.")
    }
}
