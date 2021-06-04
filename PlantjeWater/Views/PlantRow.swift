//
//  LandmarkRow.swift
//  PlantjeWater
//
//  Created by Jelien Bakker on 04/06/2021.
//

import SwiftUI

struct PlantRow: View {
    var plantje: Plantje
    
    var body: some View {
        HStack {
            Image("\(plantje.image)")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            
            VStack {
                Text("\(plantje.name)")
                Text("\(plantje.water)ml")
            }
        }
    }
}

struct PlantRow_Previews: PreviewProvider {
    static var previews: some View {
        PlantRow(plantje: plantData[0])
    }
}
