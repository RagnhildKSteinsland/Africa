//
//  ContentView.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 14/03/2021.
//

import SwiftUI

struct ContentView: View {
    //Properties
    
    let animals: [Animal] = Bundle.main.decode(file: "animals.json")

    //Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in AnimalListItemView(animal: animal)}
            }//List
            .navigationBarTitle("Africa", displayMode: .large)
        }//NavigationView
    }
}
//Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
