//
//  ContentView.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 14/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Properties
        
        //Body
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
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
