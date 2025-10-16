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
        .frame(maxWidth: .infinity, maxHeight: 20, alignment: .leading)
            .padding(.horizontal)
    }
}