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