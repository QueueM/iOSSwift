//
//  UserReviewComponent.swift
//  adeldemo
//
//  Created by Aman on 19/12/24.
//

import SwiftUI

struct UserReviewComponent: View {
  var body: some View {
      VStack(alignment: .leading) {
          HStack {
              Text("Sed ut perspiciatis unde omnis")
                  .font(FontSystem.getFont(.p1, weight: .bold))
                  .foregroundColor(ColorSystem.heading)
                  .multilineTextAlignment(.leading)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .frame(height: 22)
          }
          HStack {
              Text("4.0")
              StartsListCompoennt()
                  .frame(height: 12)
          }
          HStack {
              Image(.ICP.calendarOutline)
                  .resizable()
                  .renderingMode(.template)
                  .foregroundStyle(ColorSystem.heading)
                  .frame(width: 14, height: 14)
              Text("05 Jun, 2024")
                  .font(FontSystem.getFont(.p2, weight: .regular))
                  .foregroundColor(ColorSystem.description)
              Image(.ICP.mapAnnotaionMarkerOutline)
                  .resizable()
                  .renderingMode(.template)
                  .foregroundStyle(ColorSystem.heading)
                  .frame(width: 14, height: 14)
                  .padding(.leading, 8)
              Text("USA")
                  .font(FontSystem.getFont(.p2, weight: .regular))
                  .foregroundColor(ColorSystem.description)
          }
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.")
              .font(FontSystem.getFont(.p2, weight: .regular))
              .foregroundColor(ColorSystem.description)
          HStack {
              Image("model1")
                  .resizable()
                  .scaledToFill()
                  .frame(width: 44, height: 44)
                  .clipShape(.circle)
              VStack (alignment:.leading) {
                  Text("Savannah Nguyen")
                      .font(FontSystem.getFont(.p2, weight: .semibold))
                  Text("@savannah")
                      .font(FontSystem.getFont(.p2, weight: .regular))
              }
          }
          .padding(.top, 15)
          Rectangle()
              .frame(height: 0.5)
              .frame(maxWidth: .infinity)
              .padding(.horizontal, 0)
              .foregroundStyle(ColorSystem.stroke)
              .padding(.top, 15)
      }
      .frame(maxWidth: .infinity)
  }
}

#Preview {
    UserReviewComponent()
}
