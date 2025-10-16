//
//  PlayList.swift
//  Spotify
//
//  Created by 114-1iosClassStudent05 on 2025/10/16.
//
import SwiftUI
import UIKit

struct SmallCover: View {
    let ListTitle: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 170, height: 50)
                .foregroundColor(Color(white: 0.2))
            HStack {
                Image(ListTitle)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Text(ListTitle)
                    .font(.system(size:13, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct PlayList: View {
    var body: some View {
            VStack(spacing: 8) {
                HStack(spacing: 5) {
                    SmallCover(ListTitle: "K")
                    SmallCover(ListTitle: "Daily Mix 1")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                HStack(spacing: 5) {
                    SmallCover(ListTitle: "Jay")
                    SmallCover(ListTitle: "Y")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                HStack(spacing: 5) {
                    SmallCover(ListTitle: "J")
                    SmallCover(ListTitle: "IU")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
        }
    }
}
