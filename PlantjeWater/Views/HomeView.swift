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
                
                ZStack (alignment:.leading){
                    Text("\"")
                    Text("ah ha ha ha, stayin' alive")
                }
                
                PlantInfo()
                
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
