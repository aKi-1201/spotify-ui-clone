//
//  HeaderView.swift
//  Spotify
//
//  Created by 114-1iosClassStudent05 on 2025/10/16.
//
import SwiftUI
import UIKit

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                Text("J")
                    .font(.system(size:16))
                    .foregroundColor(.black)
            }
            ZStack {
                Capsule()
                    .frame(width: 60, height: 30)
                    .foregroundColor(.green)
                Text("所有")
                    .font(.system(size:12))
                    .foregroundColor(.black)
            }
            ZStack {
                Capsule()
                    .frame(width: 60, height: 30)
                    .foregroundColor(Color(white: 0.2))
                Text("音樂")
                    .font(.system(size:12))
                    .foregroundColor(.white)
            }
            ZStack {
                Capsule()
                    .frame(width: 80, height: 30)
                    .foregroundColor(Color(white: 0.2))
                Text("Podcast")
                    .font(.system(size:12))
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 25, alignment: .leading)
            .padding(.horizontal)
    }
}
