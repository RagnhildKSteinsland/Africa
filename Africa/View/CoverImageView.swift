//
//  CoverImageView.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 14/03/2021.
//

import SwiftUI

struct CoverImageView: View {
    // Properties
    let coverImages: [CoverImage] = Bundle.main.decode(file: "covers.json")
    
    // Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        
    }
}
//Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
