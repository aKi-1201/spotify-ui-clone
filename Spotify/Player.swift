struct Player: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.9)]),
                startPoint: .top,
                endPoint: .bottom
                
            )
            .frame(height: 50)
            .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 380, height: 45)
                .foregroundColor(Color(UIColor.darkGray))
            HStack {
                Image("David")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 35)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
                VStack(alignment: .leading, spacing: 2) {
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
            Image(systemName: "checkmark.circle.fill")
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
        VStack(spacing: 0) {
            HStack(spacing: 60) {
                VStack {
                    Image("Home")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 23)
                    Text("首頁")
                        .font(.system(size:12, weight: .bold))
                        .foregroundColor(.white)
                }
                VStack {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.gray)
                    Text("搜尋")
                        .font(.system(size:12))
                        .foregroundColor(.white)
                }
                VStack {
                    Image("MyMusic")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 23, height: 23)
                    Text("你的音樂庫")
                        .font(.system(size:12))
                        .foregroundColor(.white)
                }
                VStack {
                    Image(systemName:  "plus")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.gray)
                    Text("建立")
                        .font(.system(size:12))
                        .foregroundColor(.white)
                }
            }
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
            .background(Color.black)
        }
    }
}

struct BottomView: View {
    var body: some View {
        VStack(spacing: 0) {
            Player()
            ToolBar()
        }
    }
}