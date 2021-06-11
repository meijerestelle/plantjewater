//
//  PlanningView.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 21/05/2021.
//

import SwiftUI

struct PlanningView: View {
    var body: some View {
        VStack {
            Text("")
        }
        .background(
            Image("blob")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .padding(.top, 200.0)
        )
    }
}

struct PlanningView_Previews: PreviewProvider {
    static var previews: some View {
        PlanningView()
    }
}
