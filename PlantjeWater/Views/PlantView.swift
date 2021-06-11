//
//  PlantView.swift
//  PlantjeWater
//
//  Created by Estèlle Meijer on 21/05/2021.
//

import SwiftUI
import Foundation

//class PlantsSearch: ObservableObject {
//    @Published var =
//}

struct PlantView: View {
        let array = speciesData
        @State private var searchText = ""
        @State private var showCancelButton: Bool = false

    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack {
                        // Search view
                        HStack {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .padding(.leading, 8)
                                    

                                TextField("Look for species", text: $searchText, onEditingChanged: { isEditing in
                                    self.showCancelButton = true
                                }, onCommit: {
                                    print("onCommit")
                                })
                                .padding(8)
                                .foregroundColor(.primary)

                                Button(action: {
                                    self.searchText = ""
                                }) {
                                    Image(systemName: "xmark.circle.fill").opacity(searchText == "" ? 0 : 1)
                                }
                            }
                            .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                            .foregroundColor(.secondary)
                            .background(Color(.white))
                            .cornerRadius(10.0)
                            .shadow(color: Color.black.opacity(0.1), radius: 10)

                            if showCancelButton  {
                                Button("Cancel") {
                                        UIApplication.shared.endEditing(true) // this must be placed before the other commands here
                                        self.searchText = ""
                                        self.showCancelButton = false
                                }
                                .foregroundColor(Color(.systemBlue))
                            }
                            
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "slider.horizontal.3")
                                    .imageScale(.large)
                                    .padding(14)
                                    .background(Color("AccentColor"))
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)))
                            })
                            .shadow(color: Color("AccentColor").opacity(0.5), radius: 10, x:0, y:0)
                        }
                        .padding(.horizontal)
                        .navigationBarHidden(showCancelButton) // .animation(.default) // animation does not work properly

                            // Filtered list of names
                            ForEach(array.filter{$0.name.hasPrefix(searchText) || searchText == ""}, id:\.self) { plantje in
                                ListRow(species: plantje)
                            }
                        .navigationBarTitle(Text("Add a child"))
                        .resignKeyboardOnDragGesture()
                    }
                .padding(.top)
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
}
    
    extension UIApplication {
        func endEditing(_ force: Bool) {
            self.windows
                .filter{$0.isKeyWindow}
                .first?
                .endEditing(force)
        }
    }

struct PlantView_Previews: PreviewProvider {
    static var previews: some View {
        PlantView()
            .environment(\.colorScheme, .light)
    }
}

struct ResignKeyboardOnDragGesture: ViewModifier {
    var gesture = DragGesture().onChanged{_ in
        UIApplication.shared.endEditing(true)
    }
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

extension View {
    func resignKeyboardOnDragGesture() -> some View {
        return modifier(ResignKeyboardOnDragGesture())
    }
}
