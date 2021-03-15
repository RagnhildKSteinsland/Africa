//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 15/03/2021.
//

import SwiftUI

struct AnimalGridItemView: View {
    //Properties
    
    let animal: Animal
    
    //Body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    
    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
