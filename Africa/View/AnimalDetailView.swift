//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 15/03/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    //Properties
    let animal: Animal
    
    //Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animals[0])
    }
}
