//
//  ContentView.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 21/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                    
            PlanningView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Planning")
                }
            
            PlantView()
                .tabItem {
                    Image(systemName: "plus.app")
                    Text("Toevoegen")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profiel")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
