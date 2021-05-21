//
//  HomeView.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 21/05/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ZStack(alignment:.leading) {
                        Text("\"")
                            .font(.custom("quotes", size: 160))
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            .padding(.top, 50)
                        HStack {
                            Text("ah ha ha ha, stayin' alive")
                                .font(.title2)
                                .frame(width: 150, height: 100, alignment: .center)
                                .padding(.leading, 20)
                            
                            Spacer()
                            
                            Image("HangPlant")
                                .resizable()
                                .scaledToFit()
                                .frame(width: .infinity, height: 400, alignment: .trailing)
                        }
                    }
                    .frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity, minHeight: 80, idealHeight: 80, maxHeight: 100, alignment: .leading)
                    .padding(.bottom, 160)
                    
                    Text("Wij willen water")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    PlantInfo(name: "Jan", description: "125ml")
                    PlantInfo(name: "Flip", description: "Ik heb vandaag geen dorst.")
                    PlantInfo(name: "Jip", description: "Meh")
                    PlantInfo(name: "Jan", description: "125ml")
                    PlantInfo(name: "Flip", description: "Ik heb vandaag geen dorst.")
                    PlantInfo(name: "Jip", description: "Meh")
                }
                .padding()
            }
            .navigationBarTitle("It's Piet's day")
            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
