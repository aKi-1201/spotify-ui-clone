//
//  FansView.swift
//  Spotify
//
//  Created by 114-1iosClassStudent05 on 2025/10/16.
//
import SwiftUI
import UIKit

struct Artist: View {
    let ArtistName: String
    var body: some View {
        VStack {
            Image(ArtistName)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Text(ArtistName)
                .font(.system(size:15, weight: .bold))
                .foregroundColor(.white)
        }
    }
}

struct FansView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image("NewJeans")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                VStack(spacing: 5) {
                    Text ("更多與 風格相似的藝人")
                        .font(.system(size:12))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text ("NewJeans")
                        .font(.system(size:24, weight: .bold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding(.leading, 20)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    Artist(ArtistName: "aespa")
                    Artist(ArtistName: "IVE")
                    Artist(ArtistName: "LE SSERAFIM")
                }
                .padding(.leading, 20)
            }
        }
    }
}
