//
//  VideoPlayerView.swift
//  adeldemo
//
//  Created by Aman on 26/12/24.
//

import SwiftUI
import AVKit


struct VideoPlayerView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        playerViewController.player = AVPlayer(url: url)
        return playerViewController
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // No updates needed for now
    }
}
