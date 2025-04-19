


import SwiftUI

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height


struct SpecialistDetailsScreen: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack (alignment:.bottom) {
            VStack {
                topView
                    .frame(width: screenWidth)
                ScrollView {
                    detailsView
                        .padding(.horizontal, 15.5)
                    CustomTopTabView(
                        tabsList: [
                            CustomTopTabView.DataModel(titile: "Gallery", id: 0, view: AnyView(Text("Gallery"))),
                            CustomTopTabView.DataModel(titile: "Portfolio", id: 1, view:
                                                        AnyView(Text("Portfolio"))),
                            CustomTopTabView.DataModel(titile: "Review", id: 2, view: AnyView(reviewsTabView))
                        ]
                    )
//                    .padding(.horizontal, 15.5)
                    .padding(.top, 30)
                    //            Spacer()
                }
                .scrollIndicators(.hidden)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            ButtonComponent(buttonType:.success ,title: "Book now", imageName: nil, clickedCallback : {
            })
            .padding(.horizontal, 20)
        }
        .navigationBarHidden(true )
        
    }
    var topView : some View {
        VStack {
            ZStack (alignment:.bottom) {
                ZStack (alignment: .top) {
                    Image("backgroundimg")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 300)
                        .frame(width: screenWidth + 200)
                        .clipShape(CircularBottomShape())
                        .offset(y:0)
                        .ignoresSafeArea()
                    HStack {
                        CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {
                            dismiss()
                        })
                        Spacer()
                        CommonCircularButtonComponent(imageName: "ICP/heart_outline", tint: ColorSystem.heading, clickedCallback: {
                            
                        })
                    }
                    .frame(width: screenWidth-30)
                    
                }
                VStack {
                    Image("model1")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(.circle)
                        .padding(5)
                }
                .background(ColorSystem.background)
                .clipShape(.circle)
            }
            .padding(0)
        }
        
    }
    var detailsView : some View {
        VStack {
            HStack {
                Text("4.0")
                    .font(FontSystem.getFont(.p2, weight: .regular))
                    .foregroundStyle(ColorSystem.heading)
                StartsListCompoennt()
                    .frame(height: 12)
                Spacer()
            }
            HStack (alignment:.bottom) {
                VStack (spacing:4) {
                    HStack {
                        Text("Bessie Cooper")
                            .font(FontSystem.getFont(.h3, weight: .bold))
                        Image(.ICP.verifiedBadge)
                            .resizable()
                            .frame(width: 20, height:20)
                    }
                    .frame(height: 29)
                    Text("Hair Stylist at Lotus Salon")
                        .frame(height: 20)
                        .font(FontSystem.getFont(.p2, weight: .regular))
                        .foregroundStyle(ColorSystem.description)
                }
                Spacer()
                HStack (spacing:8) {
                    Image(.ICP.messageOutline)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(ColorSystem.heading)
                        .frame(width: 20, height: 20)
                        .padding(12)
                        .background(ColorSystem.background)
                        .clipShape(.circle)
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(ColorSystem.stroke, lineWidth: 0.5)
                        )
                    Image("ICP/two_arrow_outline")
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(.black)
                        .frame(width: 20, height: 20)
                        .padding(12)
                        .background(ColorSystem.primary)
                        .clipShape(.circle)
                    
                }
            }
            //            .padding(.bottom, 20)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam.")
                .padding(.top, 20)
                .font(FontSystem.getFont(.p2, weight: .regular))
                .foregroundStyle(ColorSystem.description)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam.")
                .padding(.top, 8)
                .font(FontSystem.getFont(.p2, weight: .regular))
                .foregroundStyle(ColorSystem.description)
        }
    }
    var galleryView : some View {
        VStack{
            Text("Gallery View")
        }
    }
    var reviewsTabView : some View {
        VStack (spacing:15) {
            HStack (spacing:0) {
                Image(.ICP.linkChainOuline)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
                    .frame(width: 18, height: 18)
                    .padding(.leading, 20)
                Image(.ICP.galleryPhotoOutline)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundStyle(ColorSystem.heading)
                    .frame(width: 18, height: 18)
                    .padding(.leading, 8)
                TextField("Write your review", text: Binding.constant(""))
                    .padding(.leading, 8)
                VStack {
                    Image(.ICP.sendShareOutline)
                        .resizable()
                        .renderingMode(.template)
                        .foregroundStyle(ColorSystem.heading)
                        .frame(width: 20, height: 20)
                        .padding(.leading, 8)
                }
                .frame(width: 44, height: 44)
                .padding(.trailing, 4)
                .background(ColorSystem.primary)
                .clipShape(.circle)
                .modifier(ViewTapGesture(lowerScale: 0.97){
                    
                })
            }
            .frame(maxWidth: .infinity)
            .frame(height: 52)
            .clipShape(.capsule)
            .overlay(
                RoundedRectangle(cornerRadius: 999)
                    .stroke(ColorSystem.stroke, lineWidth: 0.5)
            )
            
            .padding(.top, 30)
            ForEach(0..<10){ index in
                UserReviewComponent()
            }
        }
    }
    
}


#Preview {
    SpecialistDetailsScreen()
}



struct RoundedCorner: Shape {
    var topLeft: CGFloat = 0
    var topRight: CGFloat = 0
    var bottomLeft: CGFloat = 0
    var bottomRight: CGFloat = 0

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.size.width
        let height = rect.size.height

        let topLeftRadius = min(topLeft, min(width, height) / 2)
        let topRightRadius = min(topRight, min(width, height) / 2)
        let bottomLeftRadius = min(bottomLeft, min(width, height) / 2)
        let bottomRightRadius = min(bottomRight, min(width, height) / 2)

        path.move(to: CGPoint(x: width / 2, y: 0))
        path.addLine(to: CGPoint(x: width - topRightRadius, y: 0))
        path.addArc(
            center: CGPoint(x: width - topRightRadius, y: topRightRadius),
            radius: topRightRadius,
            startAngle: Angle(degrees: -90),
            endAngle: Angle(degrees: 0),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: width, y: height - bottomRightRadius))
        path.addArc(
            center: CGPoint(x: width - bottomRightRadius, y: height - bottomRightRadius),
            radius: bottomRightRadius,
            startAngle: Angle(degrees: 0),
            endAngle: Angle(degrees: 90),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: bottomLeftRadius, y: height))
        path.addArc(
            center: CGPoint(x: bottomLeftRadius, y: height - bottomLeftRadius),
            radius: bottomLeftRadius,
            startAngle: Angle(degrees: 90),
            endAngle: Angle(degrees: 180),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: 0, y: topLeftRadius))
        path.addArc(
            center: CGPoint(x: topLeftRadius, y: topLeftRadius),
            radius: topLeftRadius,
            startAngle: Angle(degrees: 180),
            endAngle: Angle(degrees: 270),
            clockwise: false
        )
        path.closeSubpath()

        return path
    }
}


//struct CircularBottomImageView: View {
//    var body: some View {
//        VStack {
//            // Main image
//            Image("model1") // Replace with your image name
//                .resizable()
//                .scaledToFill()
//                .frame(height: 300) // Adjust the height as needed
//                .clipShape(CircularBottomShape())
//                .overlay(
//                    Circle()
//                        .stroke(Color.white, lineWidth: 4)
//                        .frame(width: 100, height: 100)
//                        .offset(y: 120) // Adjust for alignment with the circular bottom
//                )
//                .shadow(radius: 5)
//
//            Spacer()
//        }
//        .edgesIgnoringSafeArea(.top)
//    }
//}

// Custom Shape for the circular bottom
struct CircularBottomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let radius = rect.width / 2 + 50
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - radius))
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.maxY - radius),
            radius: radius,
            startAngle: .zero,
            endAngle: .degrees(180),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: 0, y: 0))
        return path
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        CircularBottomImageView()
//    }
//}
