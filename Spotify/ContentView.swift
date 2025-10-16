//
//  ContentView.swift
//  Spotify
//  Vstack Hstack zstack text image scrollview
//  Created by 114-1iosClassStudent05 on 2025/10/14.
//

import SwiftUI
import UIKit

// Add: Shape that can round specific corners using UIBezierPath
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

extension View {
    /// Apply corner radius to specific corners
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 15) {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                Text("J")
                    .font(.system(size:18))
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
                    .foregroundColor(Color(UIColor.darkGray))
                Text("音樂")
                    .font(.system(size:12))
                    .foregroundColor(.white)
            }
            ZStack {
                Capsule()
                    .frame(width: 80, height: 30)
                    .foregroundColor(Color(UIColor.darkGray))
                Text("Podcast")
                    .font(.system(size:12))
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
    }
}

struct AlbumList: View {
    let ListTitle: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 180, height: 45)
                .foregroundColor(Color(UIColor.darkGray))
            HStack {
                Image(ListTitle)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    // change: only round the left two corners of the image
                    .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                Text(ListTitle)
                    .font(.system(size:13, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}
struct AlbumRecommend: View {
    let AlbumTitle: String
    let TextLine1: String
    let TextLine2: String
    var body: some View {
        VStack{
            Image(AlbumTitle)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(TextLine1)
                .font(.system(size:12))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(TextLine2)
                .font(.system(size:12))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
    

struct List: View {
    var body: some View {
            VStack {
                HStack {
                    AlbumList(ListTitle: "K")
                    AlbumList(ListTitle: "Daily Mix 1")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                HStack {
                    AlbumList(ListTitle: "Jay")
                    AlbumList(ListTitle: "Y")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                HStack {
                    AlbumList(ListTitle: "J")
                    AlbumList(ListTitle: "IU")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
        }
        
    }
}

struct RecommendList: View {
    var body: some View {
        VStack{
            Text ("專為 aKi 精心打造")
                .font(.system(size:24, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .background(.opacity(0.2))
            ScrollView(.horizontal) {
                HStack(spacing: 20){
                    AlbumRecommend(AlbumTitle: "每週新發現", TextLine1: "快速發掘隱藏好歌、冷門佳", TextLine2: "作和潛力新曲，...")
                    AlbumRecommend(AlbumTitle: "Daily Mix2", TextLine1: "周杰倫、孫燕姿、李榮浩", TextLine2: "和更多藝人...")
                    AlbumRecommend(AlbumTitle: "Daily Mix3", TextLine1: "ØZI、吳卓源、wannasleep", TextLine2: "和更多藝人...")
                }
                .padding(.leading, 20)
            }
        }
    }
}

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

struct FansList: View {
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

struct  RankList: View {
    var body: some View {
        VStack {
            Text ("排行榜")
                .font(.system(size:24, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    AlbumRecommend(AlbumTitle: "Top50", TextLine1: "每日為你更新目前最熱播的", TextLine2: "曲目 - 臺灣。")
                    AlbumRecommend(AlbumTitle: "Hit", TextLine1: "最新最 HITO 的華語流行", TextLine2: "歌曲就在這立即收聽！")
                    AlbumRecommend(AlbumTitle: "Top50G", TextLine1: "每日為你更新目前最熱播的", TextLine2: "曲目 - 全球。")
                }
            }
        }
        .padding(.leading, 20)
    }
}

struct Player: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 380, height: 45)
                .foregroundColor(Color(UIColor.darkGray))
            HStack {
                Image("David")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 35)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
                VStack(alignment: .leading) {
                    HStack(spacing: 0) {
                        Text("討厭紅樓夢")
                            .font(.system(size:12, weight: .bold))
                            .foregroundColor(.white)
                        Text("．陶喆")
                            .font(.system(size:12))
                            .foregroundColor(.white)
                    }
                    Text("無損音質")
                        .font(.system(size:12, weight: .bold))
                        .foregroundColor(.green)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding(.leading, 15)
            Image(systemName: "checkmark.circle")
                .resizable()
                .scaledToFill()
                .frame(width: 21, height: 21)
                .foregroundColor(.green)
                .padding(.leading, 260)
            Image(systemName: "play.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 17, height: 17)
                .foregroundColor(.white)
                .padding(.leading, 330)

        }
    }
}
    

struct ToolBar: View {
    var body: some View {
        HStack(spacing: 60) {
            VStack {
                Image("Home")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                Text("首頁")
                    .font(.system(size:12, weight: .bold))
                    .foregroundColor(.white)
            }
            VStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.gray)
                Text("搜尋")
                    .font(.system(size:12))
                    .foregroundColor(.white)
            }
            VStack {
                Image("MyMusic")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                Text("你的音樂庫")
                    .font(.system(size:12))
                    .foregroundColor(.white)
            }
            VStack {
                Image(systemName:  "plus")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.gray)
                Text("建立")
                    .font(.system(size:12))
                    .foregroundColor(.white)
            }
        }
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(Color.black.opacity(0.85))
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 20) {
                HeaderView()
                ScrollView {
                    VStack(spacing: 30) {
                        List()
                        RecommendList()
                        FansList()
                        RankList()
                        Rectangle()
                            .frame(height: 60)
                    }
                }
                .overlay(
                    VStack { Spacer(); Player(); ToolBar() }
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
