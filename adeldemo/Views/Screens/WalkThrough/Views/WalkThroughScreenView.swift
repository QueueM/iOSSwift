//
//  WalkThroughScreenView.swift
//  adeldemo
//
//  Created by Aman on 10/12/24.
//

import SwiftUI

struct WalkThroughScreenView : View {
    struct dataModel {
        let imageName : String
        let titile : String
        let description : String
    }
    @State var isNavigateToSignUp : Bool = false
    var contentList : [dataModel] = [
        dataModel(imageName: "backgroundimg", titile: "Discover Your Perfect Style with Our Expert Stylists", description: "Transform your look with our curated salon services, designed to bring out your unique beauty."),
        dataModel(imageName: "backgroundimg", titile: "Elevate Your Beauty Routine with Premium Services", description: "Experience top-notch salon services tailored to your needs, ensuring you leave feeling fabulous."),
        dataModel(imageName: "backgroundimg", titile: "Unleash Your Inner Glam with Luxury Treatments", description: "Step into a world of luxury and let our expert stylists craft the perfect look just for you."),
    ]
    @State var selectedContentIndex = 0
    var body: some View {
        ZStack {
//            AutoScroller(
//                imageNames: contentList.map {
//                    $0.imageName
//                },
//                autoScrollInterval: nil
//            )
//            .clipShape(CustomCorners(topLeft: 0, topRight: 40, bottomLeft: 300, bottomRight: 0))
//            .padding(.bottom, 160)
            
            
            AutoScroller(
                indicatorOffSet:100.0,
                imageNames: contentList.map {
                    $0.imageName
                },
                autoScrollInterval: nil, 
                bindedSelectedIndex: $selectedContentIndex
            )
//            .clipShape(CustomCorners(topLeft: 0, topRight: 40, bottomLeft: 40, bottomRight: 40))
            .padding(.bottom, 240)
            
//            InvertedCornersShape(cornerRadius: 30)
//                        .fill(Color.blue)
//                        .frame(width: 200, height: 200)
//                        .padding()
            
            VStack {
                Spacer()
                bottomView
                    .frame(height: 320)
                    .background(ColorSystem.background)
                    .clipShape(CustomCorners(topLeft: 40, topRight: 40, bottomLeft: 40, bottomRight: 40))
            }
        }
        .ignoresSafeArea()
        .navigationDestination(isPresented: $isNavigateToSignUp){
            SignUpScreenView()
        }
        
    }
    
    var bottomView : some View {
        VStack {
            Text(contentList[selectedContentIndex].titile)
                .font(.system(size: 24))
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            Text(contentList[selectedContentIndex].description)
                .foregroundStyle(ColorSystem.description)
                .padding(.top, 8)
//                .padding(.bottom, 40)
            Spacer()
            if selectedContentIndex < (contentList.count - 1) {
                VStack {
                    Image("ICP/cheveron_right")
                }
                .frame(width: 60, height: 60)
                .background(ColorSystem.primary)
                .clipShape(RoundedRectangle(cornerRadius: 999))
                .padding(.bottom, 40)
                .onTapGesture {
                    if (contentList.count - 1 ) > selectedContentIndex {
                        withAnimation {
                            selectedContentIndex += 1
                        }
                    }
                }
            }
            else {
                VStack {
                    Text("Get Started")
                }
                .foregroundStyle(.black)
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(ColorSystem.primary)
                .clipShape(RoundedRectangle(cornerRadius: 999))
                .padding(.horizontal,10)
                .padding(.bottom, 40)
                .modifier(ViewTapGesture(lowerScale: 0.98){
                    isNavigateToSignUp = true
                })
            }
            
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 15)
        
        
    }
}


#Preview {
    WalkThroughScreenView()
}


struct AutoScroller: View {
    var indicatorOffSet = 50.0
    var imageNames: [String]
    @State var timer : Timer?
    let autoScrollInterval: TimeInterval?
    @Binding var bindedSelectedIndex : Int
    // Step 3: Manage Selected Image Index
    @State private var selectedImageIndex: Int = 0

    var body: some View {
        ZStack {
            // Step 4: Background Color
            Color.secondary
                .ignoresSafeArea()

            // Step 5: Create TabView for Carousel
            TabView(selection: $selectedImageIndex) {
                // Step 6: Iterate Through Images
                ForEach(0..<imageNames.count, id: \.self) { index in
                    ZStack(alignment: .topLeading) {
                        // Step 7: Display Image
                        Image("\(imageNames[index])")
                            .resizable()
                            .scaledToFill()
                            .tag(index)
                            .ignoresSafeArea()
                    }
                    .shadow(radius: 20) // Step 9: Apply Shadow
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never)) // Step 11: Customize TabView Style
            .ignoresSafeArea()

            // Step 12: Navigation Dots
            VStack {
                Spacer()
                HStack {
                    ForEach(0..<imageNames.count, id: \.self) { index in
                        // Step 13: Create Navigation Dots
                        Capsule()
                            .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                            .frame(width: selectedImageIndex == index ? 25 : 8, height: 8)
                            .onTapGesture {
                                // Step 14: Handle Navigation Dot Taps
                                selectedImageIndex = index
                            }
                    }
//                    .offset(y: 130) // Step 15: Adjust Dots Position
                }
            }
            .padding(.bottom, indicatorOffSet)
        }
        .onAppear(perform: {
            if autoScrollInterval != nil {
                startAutoScroll()
            }
        })
        .onDisappear(perform: {
            stopAutoScroll()
        })
        .onChange(of: bindedSelectedIndex, perform: {
            newValue in
            withAnimation {
                selectedImageIndex = newValue
            }
        })
        .onChange(of: selectedImageIndex, perform: {
            newValue in
            withAnimation {
                bindedSelectedIndex = newValue
            }
        })
    }
    
    private func startAutoScroll() {
        stopAutoScroll() // Ensure no duplicate timers
        timer = Timer.scheduledTimer(withTimeInterval: autoScrollInterval ?? 0.3, repeats: true) { _ in
            withAnimation {
                selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
            }
        }
    }
    
    private func stopAutoScroll() {
        timer?.invalidate()
        timer = nil
    }
}


struct foodOfferImageTabViewTests : View {
    @Environment(\.colorScheme) var colorScheme
    private let dotAppearance = UIPageControl.appearance()
    @State var imageList : [String]
    
    var body: some View {
        VStack{
            TabView {
                ForEach(imageList, id: \.self) {img in
                    VStack{
                        Image(img)
                            .resizable()
                            .frame(height: 180)
                            .frame(maxWidth: .infinity)
                            .cornerRadius(15)
                            .scaledToFit()
                            .padding()

                    }
                }
            }
            .frame(height: 260)
            .tabViewStyle(PageTabViewStyle())
            .onAppear(){
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .black.withAlphaComponent(0.2)
                dotAppearance.clipsToBounds = true
            }

        }
    }
}


struct CustomCorners: Shape {
    var topLeft: CGFloat = 0
    var topRight: CGFloat = 0
    var bottomLeft: CGFloat = 0
    var bottomRight: CGFloat = 0

    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Top-left corner
        path.move(to: CGPoint(x: rect.minX + topLeft, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - topRight, y: rect.minY)) // Top-right corner
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + topRight),
                          control: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - bottomRight)) // Bottom-right corner
        path.addQuadCurve(to: CGPoint(x: rect.maxX - bottomRight, y: rect.maxY),
                          control: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX + bottomLeft, y: rect.maxY)) // Bottom-left corner
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY - bottomLeft),
                          control: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + topLeft)) // Back to top-left corner
        path.addQuadCurve(to: CGPoint(x: rect.minX + topLeft, y: rect.minY),
                          control: CGPoint(x: rect.minX, y: rect.minY))

        return path
    }
}



// Custom Shape for inverted (C-shaped) corners
struct InvertedCornersShape: Shape {
    var cornerRadius: CGFloat

    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Start at the top-left corner, adjusted for the inverted curve
        path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
        
        // Top edge
        path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY))
        
        // Top-right corner cut-out
        path.addArc(center: CGPoint(x: rect.maxX, y: rect.minY + cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(-90),
                    endAngle: .degrees(0),
                    clockwise: false)
        
        // Right edge
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - cornerRadius))
        
        // Bottom-right corner cut-out
        path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY),
                    radius: cornerRadius,
                    startAngle: .degrees(0),
                    endAngle: .degrees(90),
                    clockwise: false)
        
        // Bottom edge
        path.addLine(to: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY))
        
        // Bottom-left corner cut-out
        path.addArc(center: CGPoint(x: rect.minX, y: rect.maxY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(90),
                    endAngle: .degrees(180),
                    clockwise: false)
        
        // Left edge
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))
        
        // Top-left corner cut-out
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY),
                    radius: cornerRadius,
                    startAngle: .degrees(180),
                    endAngle: .degrees(-90),
                    clockwise: false)
        
        path.closeSubpath()
        
        return path
    }
}
