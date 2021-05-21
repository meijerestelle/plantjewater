//
//  PlantjeWaterApp.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 21/05/2021.
//

import SwiftUI

@main
struct PlantjeWaterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
