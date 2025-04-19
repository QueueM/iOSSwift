//
//  BookShopServiceAppointmentScreen.swift
//  adeldemo
//
//  Created by Aman on 30/12/24.
//

import SwiftUI

struct BookShopServiceAppointmentScreen : View {
    @Environment(\.dismiss) private var dismiss
    @StateObject var vm = BookShopServiceAppointmentScreenViewModel()
    var body: some View {
        VStack {
            HStack {
                CommonCircularButtonComponent(image: .cheveronLeft, tint: ColorSystem.heading, clickedCallback: {
                    dismiss()
                })
                Text("Book Appointment")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                Spacer()
            }
            .frame(height: 44)
            .padding(.bottom, 20)
            ZStack (alignment:.bottom) {
                ScrollView {
                    CustomProgressView(currentStep:0)
                    dateView
                    DividerLineComponent()
                    selectTimeView
                    topSpecialistView
                        .padding(.top, 30)
                }
                .scrollIndicators(.hidden)
                Text("Continue")
                    .font(FontSystem.getFont(.p1, weight: .medium))
                    .foregroundStyle(.black)
//                    .padding(.vertical, 13)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(ColorSystem.primary)
                    .padding(.bottom, 0.1)
                    .clipShape(.capsule)
                    .modifier(ViewTapGesture(lowerScale: 0.98) {
                        vm.isNavigateToPaymentScren = true
                    })
            }
        }
        .padding(.horizontal, 15)
        .navigationDestination(isPresented: $vm.isNavigateToPaymentScren) {
            PaymentScreen()
        }
        .navigationBarHidden(true)
    }
    var dateView : some View {
        VStack (alignment:.leading) {
            HStack {
                Text("Select date")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                
                Spacer()
            }
            customDatePicker()
        }
        .frame(maxWidth: .infinity)
    }
    
    var selectTimeView : some View {
        VStack {
            HStack {
                Text("Select date")
                    .font(FontSystem.getFont(.p1, weight: .bold))
                    .foregroundStyle(ColorSystem.heading)
                
                Spacer()
                HStack (spacing:20) {
                    HStack {
                        checkBoxComponent(isSelected: Binding.constant(false))
                            .frame(width: 20, height: 20)
                        Text("AM")
                            .font(FontSystem.getFont(.p3, weight: .regular))
                            .foregroundStyle(ColorSystem.description)
                    }
                    HStack {
                        checkBoxComponent(isSelected: Binding.constant(true))
                            .frame(width: 20, height: 20)
                        Text("AM")
                            .font(FontSystem.getFont(.p3, weight: .regular))
                            .foregroundStyle(ColorSystem.description)
                    }
                }
            }
            .frame(height: 22)
            ForEach (0..<3) {  index in
                HStack {
                    //                Spacer()
                    if index == 0 {
                        Text("01:00 pm")
                            .padding(.horizontal, 29)
                            .padding(.vertical, 10)
                            .background(ColorSystem.heading)
                            .foregroundStyle(ColorSystem.background)
                            .clipShape(.capsule)
                            .font(FontSystem.getFont(.p3, weight: .regular))
                    }
                    else {
                        Text("01:00 pm")
                            .padding(.horizontal, 29)
                            .padding(.vertical, 10)
                            .background(ColorSystem.background)
                            .foregroundStyle(ColorSystem.heading)
                            .clipShape(.capsule)
                            .font(FontSystem.getFont(.p3, weight: .regular))
                            .overlay(
                                RoundedRectangle(cornerRadius: 999)
                                    .stroke(ColorSystem.stroke, lineWidth: 0.5)
                            )
                    }
                    Spacer()
                    Text("01:00 pm")
                        .padding(.horizontal, 29)
                        .padding(.vertical, 10)
                        .background(ColorSystem.background)
                        .foregroundStyle(ColorSystem.heading)
                        .clipShape(.capsule)
                        .font(FontSystem.getFont(.p3, weight: .regular))
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(ColorSystem.stroke, lineWidth: 0.5)
                        )
                    Spacer()
                    Text("01:00 pm")
                        .padding(.horizontal, 29)
                        .padding(.vertical, 10)
                        .background(ColorSystem.background)
                        .foregroundStyle(ColorSystem.heading)
                        .clipShape(.capsule)
                        .font(FontSystem.getFont(.p3, weight: .regular))
                        .overlay(
                            RoundedRectangle(cornerRadius: 999)
                                .stroke(ColorSystem.stroke, lineWidth: 0.5)
                        )
                    //                Spacer()
                }
            }
        }
    }
    var topSpecialistView : some View {
        VStack (alignment: .leading){
            Text("Top specialist")
                .bold()
            HStack (spacing:10){
                SpecialistCardComponent(name: "Jane Cooper", isVerified: true, rating: 4.0, description: "This is description", personImage: "model1")
                SpecialistCardComponent(name: "Jenny Wilson", isVerified: true, rating: 4.0, description: "This is description", personImage: "model2")
            }
            .padding(.top, 15)
            HStack (spacing:10){
                SpecialistCardComponent(name: "Jane Cooper", isVerified: true, rating: 4.0, description: "This is description", personImage: "model1")
                SpecialistCardComponent(name: "Jenny Wilson", isVerified: true, rating: 4.0, description: "This is description", personImage: "model2")
            }
            .padding(.top, 15)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    BookShopServiceAppointmentScreen()
}

struct CustomProgressView: View {
    let stepTitles: [String] = ["Book Appointment", "Payment", "Booking successfully"]
    var currentStep: Int = 1 // Current step (0-based index)

    var body: some View {
        VStack {
            // Horizontal progress indicators
            HStack(spacing: 16) {
                ForEach(stepTitles.indices, id: \.self) { index in
                    HStack(spacing: 0) {
                        // Step Circle
                        ZStack {
                            Circle()
                                .fill(index <= currentStep ? Color.green.opacity(0.3) : Color.gray.opacity(0.2))
                                .frame(width: 30, height: 30)

                            if index < currentStep {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.green)
                            } else if index == currentStep {
                                Circle()
                                    .stroke(Color.green, lineWidth: 2)
                                    .frame(width: 30, height: 30)
                            }
                        }

                        // Line between steps
                        if index < stepTitles.count - 1 {
                            Rectangle()
                                .fill(index < currentStep ? Color.green : Color.gray)
                                .frame(height: 2)
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
            }
            
            // Step Titles
            HStack(spacing: 16) {
                ForEach(stepTitles, id: \.self) { title in
                    Text(title)
                        .font(.caption)
                        .foregroundColor(ColorSystem.heading)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
        .padding()
    }
}


struct customDatePicker : View {
    var body: some View {
        VStack {
            HStack {
                Image(.ICP.cheveronLeft)
                    .renderingMode(.template)
                    .tint(ColorSystem.heading)
                    .frame(width: 16, height: 16)
                Spacer()
                Text("June, 2024")
                Spacer()
                Image(.ICP.cheveronRight)
                    .renderingMode(.template)
                    .tint(ColorSystem.heading)
                    .frame(width: 16, height: 16)
            }
            .frame(height: 60)
            HStack {
                Spacer()
                Text("Sun")
                Spacer()
                Text("Mon")
                Spacer()
                Text("Tue")
                Spacer()
                Text("Wed")
                Spacer()
                Text("Thu")
                Spacer()
                Text("Fri")
                Spacer()
                Text("Sat")
                Spacer()
            }
            .font(FontSystem.getFont(.p2, weight: .regular))
            .foregroundStyle(ColorSystem.description)
            HStack {
                Spacer()
                Text("18")
                Spacer()
                Text("19")
                Spacer()
                Text("20")
                Spacer()
                Text("21")
                    .frame(width: 50, height: 50)
                    .background(ColorSystem.primary)
                    .clipShape(.circle)
                    .font(FontSystem.getFont(.h4, weight: .bold))
                Spacer()
                Text("22")
                Spacer()
                Text("23")
                Spacer()
                Text("24")
                Spacer()
            }
            .font(FontSystem.getFont(.h4, weight: .regular))
            .foregroundStyle(ColorSystem.heading)
            .frame(height: 50)
        }
    }
}
