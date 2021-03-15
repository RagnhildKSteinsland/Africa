//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Ragnhild Kjellevold Steinsland on 15/03/2021.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //Properties
    
    var videoSelected: String
    var videoTitle: String
    
    //Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                //Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 8)
                , alignment: .topLeading
            )
        }//VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
        }
    }
}
