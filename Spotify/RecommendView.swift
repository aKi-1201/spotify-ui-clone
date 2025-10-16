import SwiftUI
import UIKit

struct RecommendView: View {
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
                    AlbumCover(AlbumTitle: "每週新發現", TextLine1:
                        """
                        快速發掘隱藏好歌、冷門佳
                        作和潛力新曲，...
                        """)
                    AlbumCover(AlbumTitle: "Daily Mix2", TextLine1: """
                        周杰倫、孫燕姿、小宇
                        宋念宇 和更多藝人...
                        """)
                    AlbumCover(AlbumTitle: "Daily Mix3", TextLine1: """
                        ØZI、吳卓源、wannasleep
                        和更多藝人...
                        """)
                }
                .padding(.leading, 20)
            }
        }
    }
}
