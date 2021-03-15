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
    
    //Body
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
