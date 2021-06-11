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
    @State private var water: String = ""
    
    let dateFormatter: DateFormatter = {
           let formatter = DateFormatter()
           formatter.dateStyle = .long
           return formatter
       }()

       @State private var birthDate = Date()
    
    var species: Species
    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Text("Plant of species:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("SecondaryColor"))
            
            Text("\(species.name)")
                .padding(.bottom, 50)
            
            Text("Your plant's name")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("SecondaryColor"))

            TextField(
                "name",
                text: $name)
            { isEditing in
                self.isEditing = isEditing
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .background(Color.white)
            .padding(.bottom, 50)
            
            
            
            Text("How often does your child needs water?")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("SecondaryColor"))
          
            
            TextField(
                "water",
                text: $water)
            { isEditing in
                self.isEditing = isEditing
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .background(Color.white)
            .padding(.bottom, 50)
            
            
            Text("What is your plant's birthday?")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("SecondaryColor"))
            
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                            Text("Select birthday")
                        }

            Spacer()
            
            HStack {
                Spacer()
                
                Button(
                    action: { print("hoi")},
                    label: {
                    Text("Save")
                })
            }
            .padding()
        }
        .padding()
        .background(
            Image("blob")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .padding(.top, 200.0)
        )
    }
}

struct AddPlantView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlantView(species: speciesData[0])
    }
}
