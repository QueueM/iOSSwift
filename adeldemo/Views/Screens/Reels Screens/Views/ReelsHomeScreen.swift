import SwiftUI


import SwiftUI
import AVKit

struct TikTokStyleVideoPlayer: UIViewRepresentable {
    let player: AVPlayer
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        // Create and configure AVPlayerLayer
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = UIScreen.main.bounds
        view.layer.addSublayer(playerLayer)
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // No updates needed; the player instance updates automatically
    }
}
struct ReelsHomeScreen: View {
    @State private var videoIndex = 0
    @State private var player: AVPlayer = AVPlayer()
    let videoURLs = [
//        URL(string: "https://samplelib.com/lib/preview/mp4/sample-5s.mp4")!,
        URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!,
        URL(string: "https://samplelib.com/lib/preview/mp4/sample-5s.mp4")!,
        URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!,
        URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!,
        URL(string: "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4")!
        
    ]
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack (alignment:.top){
////                TikTokStyleVideoPlayer(player: player)
////                    .frame(width: geometry.size.width, height: geometry.size.height)
////                    .ignoresSafeArea()
//                Image(.model1)
//                    .resizable()
//                    .scaledToFill()
////                    .frame(maxWidth: .infinity)
//                    .frame(maxHeight: .infinity)
//                    .ignoresSafeArea()
//                headingView
//            }
//            .onAppear {
//                playVideo(at: videoIndex)
//            }
//            .gesture(
//                DragGesture()
//                    .onEnded { value in
//                        if value.translation.height > 50 {
//                            // Swipe down
//                            videoIndex = max(videoIndex - 1, 0)
//                        } else if value.translation.height < -50 {
//                            // Swipe up
//                            videoIndex = min(videoIndex + 1, videoURLs.count - 1)
//                        }
//                        playVideo(at: videoIndex)
//                    }
//            )
//        }
//    }

    var body: some View {
        GeometryReader { geometry in
            ZStack (alignment:.top){
                Image(.reelsHomeImg)
                    .resizable()
//                    .scaledToFill()
//                    .frame(maxWidth: .infinity)
                    .frame(maxHeight: .infinity)
                    .frame(maxWidth: screenWidth)
                    .ignoresSafeArea()
                VStack {
                    headingView
                    navigationButtons.padding(.top, 15)
                    Spacer()
                    contentView
                }
//                .frame(maxHeight: screenHeight)
                .padding(.horizontal, 15)
                .padding(.bottom, 60)
            }
            
        }
        .navigationBarHidden(true)
    }
    private func playVideo(at index: Int) {
        player.replaceCurrentItem(with: AVPlayerItem(url: videoURLs[index]))
        player.play()
    }
    
    var headingView : some View {
        HStack {
//            CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {})
            Text("Reels")
                .font(FontSystem.getFont(.p1, weight: .bold))
                .foregroundStyle(ColorSystem.Light.background.color)
                .shadow(radius: 2)
            
            Spacer()
            Image(.ICP.cameraPhotoOutline)
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(ColorSystem.Light.heading.color)
                .frame(width: 24, height: 24)
        }
    }
    var navigationButtons : some View {
        HStack {
            Text("Nearby | ")
                .modifier(ViewTapGesture(){})
                .shadow(radius: 2)
            
            Text(" For you | ")
                .modifier(ViewTapGesture(){})
                .shadow(radius: 2)
            Text(" Folowing ")
                .modifier(ViewTapGesture(){})
                .shadow(radius: 2)
        }
        .font(FontSystem.getFont(.p2, weight: .regular))
        .foregroundStyle(ColorSystem.Light.background.color)
    }
    
    var contentView : some View {
        HStack (alignment: .bottom) {
            VStack (alignment:.leading){
                shopDetailsCard
                followView
                Text("Read Caption 🎉")
                    .font(FontSystem.getFont(.p3, weight: .regular))
                    .foregroundStyle(ColorSystem.Light.background.color)
                    .padding(.top, 4)
                    .padding(.bottom, 20)
                    .shadow(radius: 2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            VStack (spacing:20){
                getBtn(imagename: .ICP.heartOutline, text: "1.2 M")
                getBtn(imagename: .ICP.commentOutline, text: "5 918")
                getBtn(imagename: .ICP.shareOutline, text: nil)
                getBtn(imagename: .ICP.moreOutline, text: nil)
            }
            .padding(.bottom, 40)
        }
//        .frame(maxHeight: .infinity, )
        .frame(maxWidth: .infinity, alignment: .bottom)
//        .background(.red)
    }
    var followView : some View {
        HStack {
            Image(.backgroundimg)
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
                .clipShape(.circle)
                .shadow(radius: 2)
            Text("Lotus Salon")
                .font(FontSystem.getFont(.p1, weight: .regular))
                .foregroundStyle(ColorSystem.Light.background.color)
                .shadow(radius: 2)
            Image(.ICP.verifiedBadge)
                .resizable()
                .frame(width: 12, height: 12)
                .padding(.leading, 0)
            Text("Follow")
                .shadow(radius: 2)
                .font(FontSystem.getFont(.p3, weight: .regular))
                .frame(width: 53, height: 22)
                .foregroundStyle(ColorSystem.Light.background.color)
                .overlay(
                    RoundedRectangle(cornerRadius: 999)
                        .stroke(ColorSystem.Light.background.color, lineWidth: 0.5)
                )
                .padding(.leading,4)
                .modifier(ViewTapGesture(){})
                .shadow(radius: 2)
        }
    }
    func getBtn(imagename:ImageResource, text:String?) -> some View {
        VStack {
            Image(imagename)
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(ColorSystem.Light.background.color)
                .frame(width: 24, height: 24)
                .shadow(radius: 5)
            if let text {
                Text(text)
                    .font(FontSystem.getFont(.p1, weight: .regular))
                    .foregroundStyle(ColorSystem.Light.background.color)
                    .padding(.top, 8)
                    .shadow(radius: 5)
            }
        }
        .modifier(ViewTapGesture(){})
    }
    
    var shopDetailsCard : some View {
        HStack {
            Image(.backgroundimg)
                .resizable()
                .scaledToFill()
                .frame(width: 72, height: 76)
                .cornerRadius(10)
            VStack (alignment:.leading, spacing: 4) {
                HStack {
                    StartsListCompoennt()
                        .frame(height: 8)
                    Text("4.0")
                        .font(FontSystem.getFont(.p4, weight: .semibold))
                        .foregroundStyle(ColorSystem.background)
                }
                HStack {
                    Text("Lotus Salon")
                        .font(FontSystem.getFont(.p3, weight: .bold))
                        .foregroundStyle(ColorSystem.Light.background.color)
                    Image(.ICP.verifiedBadge)
                        .resizable()
                        .frame(width: 12, height: 12)
                        .padding(.leading, 0)
                    
                }
                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                    .font(FontSystem.getFont(.p5, weight: .regular))
                    .foregroundStyle(ColorSystem.Light.background2.color)
                
                HStack {
                    Image(.ICP.clockOutline)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 10, height: 10)
                    Text("8.5 min (4.5 km)")
                        .font(FontSystem.getFont(.p4, weight: .regular))
                        .foregroundStyle(ColorSystem.Light.background.color)
                    
                    Text("Book")
                        .font(FontSystem.getFont(.p3, weight: .medium))
                        .foregroundStyle(.black)
                        .frame(width: 56, height: 18)
                        .background(ColorSystem.Light.primary.color)
                        .clipShape(.capsule)
                        .modifier(ViewTapGesture(){})
                }
                .padding(.top, 4)
            }
            
        }
        .padding(8)
        .background(.ultraThinMaterial)
        .cornerRadius(18)
    }
}

struct ReelsHomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ReelsHomeScreen()
    }
}
