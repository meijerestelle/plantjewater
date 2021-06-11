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
            VStack {
                VStack {

                    ProfileCard()
                        .padding(.top)
                    
                    HStack {
                        ProfilePlant()
                        
                        ProfilePlant()
                    }
                    
                    Spacer()
                }
                .navigationBarTitle("The fam")
                .navigationBarItems(trailing:
                                        Button(action: {
                                          print("settings")
                                        }, label: {
                                            Image(systemName: "gearshape")
                                                .imageScale(.medium)
                                                .padding(10)
                                                .foregroundColor(.white)
                                                .background(Color("AccentColor"))
                                                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                    }))
            }
            .background(
                Image("blob")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .padding(.top, 200.0))
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
