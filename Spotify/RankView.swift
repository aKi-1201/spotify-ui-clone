struct  RankView: View {
    var body: some View {
        VStack {
            Text ("排行榜")
                .font(.system(size:24, weight: .bold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    AlbumCover(AlbumTitle: "Top50", TextLine1: """
                        每日為你更新目前最熱播的
                        曲目 - 臺灣。
                        """)
                    AlbumCover(AlbumTitle: "Hit", TextLine1: """
                        最新最 HITO 的華語流行
                        歌曲就在這立即收聽！
                        """)
                    AlbumCover(AlbumTitle: "Top50G", TextLine1:
                        """
                        每日為你更新目前最熱播的
                        曲目 - 全球。
                        """)
                }
            }
        }
        .padding(.leading, 20)
    }
}