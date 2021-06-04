//
//  ProfileView.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 21/05/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView {

                ProfileCard()
                    .padding(.top)
                
                HStack {
                    ProfilePlant()
                    
                    ProfilePlant()
                }
            }
            .navigationBarTitle("The fam")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
