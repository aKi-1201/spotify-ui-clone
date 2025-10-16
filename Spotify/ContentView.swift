//
//  ContentView.swift
//  Spotify
//  Vstack Hstack zstack text image scrollview
//  Created by 114-1iosClassStudent05 on 2025/10/14.
//

import SwiftUI
import UIKit

struct AlbumCover: View {
    let AlbumTitle: String
    let TextLine1: String
    var body: some View {
        VStack{
            Image(AlbumTitle)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            Text(TextLine1)
                .font(.system(size:12))
                .foregroundColor(.white)
                .multilineTextAlignment(.leading)
                .lineLimit(3)
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 20) {
                HeaderView()
                ScrollView {
                    VStack(spacing: 25) {
                        PlayList()
                        RecommendView()
                        RankView()
                        FansView()
                        Rectangle()
                            .frame(height: 100)
                    }
                }
                .overlay(
                    VStack {Spacer(); BottomView() }
                        .ignoresSafeArea(edges: .bottom),
                    alignment: .bottom
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
