import SwiftUI

struct StoriesScreen: View {
    @Environment(\.dismiss) private var dismiss
    @State private var currentProgress: CGFloat = 0.5 // Progress of the current story section
    let totalSections = 5 // Number of sections in the progress bar
    @State var currentSection = 2 // Current active section (1-based index)
  var body: some View {
      ZStack {
          // Background image or content
          Image(currentSection % 2 == 0 ? .model1 : .model2) // Replace with your image asset name
              .resizable()
          
              .scaledToFill()
              .ignoresSafeArea()
              .frame(width: screenWidth, height: screenHeight)
              .onTapGesture {
                  if currentSection < totalSections {
                      currentSection += 1
                  }
                  else {
                      currentSection = 1
                  }
              }
          VStack {
              // Progress Bar at the Top
              HStack(spacing: 5) {
                  ForEach(0..<totalSections, id: \.self) { index in
                      Capsule()
                          .fill(index < currentSection - 1 ? Color.white : (index == currentSection - 1 ? Color.white.opacity(currentProgress) : Color.white.opacity(0.5)))
                          .frame(height: 4)
                          .frame(maxWidth: index == currentSection - 1 ? .infinity : .infinity / CGFloat(totalSections))
                          .animation(.easeInOut, value: currentProgress)
                  }
              }
              .padding(.horizontal)
              .padding(.top, 40)
              
              // Header Section
              HStack {
                  // Story Source Name and Time
                  VStack(alignment: .leading) {
                      Text("Lotus Salon")
                          .font(.headline)
                          .foregroundColor(.white)
                          .bold()
                      
                      Text("18h")
                          .font(.caption)
                          .foregroundColor(.white.opacity(0.8))
                  }
                  
                  Spacer()
                  
                  // Close Button
                  Button(action: {
                      // Action to close the story
                      dismiss()
                  }) {
                      Image(systemName: "xmark")
                          .font(.title3)
                          .foregroundColor(.white)
                          .padding(8)
                          .background(Color.black.opacity(0.5))
                          .clipShape(Circle())
                      
                  }
              }
              .padding(.horizontal)
              .padding(.top, 40) // Adjust for safe area
              
              Spacer()
              
              // Bottom Section (Message Input)
              HStack {
                  Button(action: {
                      // Action to send a message
                  }) {
                      HStack {
                          Text("Send message")
                              .foregroundColor(.white.opacity(0.8))
                          Spacer()
                      }
                      .padding()
                      .background(Color.black.opacity(0.5))
                      .cornerRadius(20)
                  }
                  
                  Button(action: {
                      // Action to like the story
                  }) {
                      Image(systemName: "heart")
                          .font(.title2)
                          .foregroundColor(.white)
                          .padding(8)
                          .background(Color.black.opacity(0.5))
                          .clipShape(Circle())
                  }
              }
              .padding(.horizontal)
              .padding(.bottom, 20) // Adjust for safe area
          }
          .padding(.bottom)
      }
      .frame(width: screenWidth, height: screenHeight)
  }
}

struct StoriesScreen_Previews: PreviewProvider {
  static var previews: some View {
      StoriesScreen()
  }
}
