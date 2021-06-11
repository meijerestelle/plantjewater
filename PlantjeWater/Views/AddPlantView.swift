//
//  AddPlantView.swift
//  PlantjeWater
//
//  Created by Jelien Bakker on 11/06/2021.
//

import SwiftUI

struct AddPlantView: View {
    @State private var name: String = ""
    @State private var isEditing = false
    
    var species: Species
    
    var body: some View {
        
        VStack{
            Text("\(species.name)")
            TextField(
                "name",
                text: $name)
            { isEditing in
                self.isEditing = isEditing
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())

            
        
        }
        
    }
}

struct AddPlantView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlantView(species: speciesData[0])
    }
}
