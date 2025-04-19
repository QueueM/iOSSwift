//
//  testscreen.swift
//  adeldemo
//
//  Created by Aman on 12/12/24.
//

import SwiftUI


struct TestScreen : View {
    var body: some View {
        ScrollView {
            ZStack() {
                VStack(alignment: .leading, spacing: 15) {
                    HStack(spacing: 177) {
                        HStack(spacing: 0) {
                            
                        }
                        .padding(
                            EdgeInsets(top: 12.83, leading: 9.17, bottom: 12.83, trailing: 9.17)
                        )
                        .frame(width: 44, height: 44)
                        HStack(alignment: .top, spacing: 5) {
                            HStack(spacing: 6) {
                                HStack(spacing: 0) {
                                    ZStack() { }
                                        .frame(width: 20, height: 20)
                                }
                                .frame(width: 20, height: 20)
                            }
                            .padding(12)
                            .cornerRadius(40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .inset(by: 0.25)
                                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
                            )
                            HStack(spacing: 8) {
                                HStack(spacing: 0) {
                                    ZStack() { }
                                        .frame(width: 20, height: 20)
                                }
                                .frame(width: 20, height: 20)
                            }
                            .padding(12)
                            .cornerRadius(40)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .inset(by: 0.25)
                                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
                            )
                        }
                    }
                    .frame(width: 345)
                    HStack(alignment: .top, spacing: 15) {
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 60, height: 60)
                            .background(
                                AsyncImage(url: URL(string: "https://via.placeholder.com/60x60"))
                            )
                        VStack(alignment: .leading, spacing: 6) {
                            Text("Hi, Jenny")
                                .font(Font.custom("Manrope", size: 28).weight(.bold))
                                .lineSpacing(35)
                                .foregroundColor(.black)
                            HStack(spacing: 4) {
                                HStack(spacing: 0) {
                                    ZStack() { }
                                        .frame(width: 14, height: 14)
                                }
                                .frame(width: 14, height: 14)
                                Text("40 Parker Rd. Allentown")
                                    .font(Font.custom("Manrope", size: 14))
                                    .lineSpacing(19.60)
                                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                            }
                        }
                    }
                }
                .offset(x: 0, y: -814)
                VStack(alignment: .leading, spacing: 15) {
                    Text("Top specialist")
                        .font(Font.custom("Manrope", size: 16).weight(.bold))
                        .lineSpacing(21.60)
                        .foregroundColor(.black)
                    HStack(alignment: .top, spacing: 10) {
                        VStack(spacing: 8) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 157, height: 120)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/157x120"))
                                )
                                .cornerRadius(15)
                            VStack(alignment: .leading, spacing: 6) {
                                HStack(spacing: 6) {
                                    HStack(spacing: 4) {
                                        Text("Jane Cooper")
                                            .font(Font.custom("Manrope", size: 14).weight(.bold))
                                            .lineSpacing(19.60)
                                            .foregroundColor(.black)
                                        ZStack() { }
                                            .frame(width: 12, height: 12)
                                    }
                                    HStack(spacing: 3) {
                                        HStack(spacing: 0) {
                                            
                                        }
                                        .padding(EdgeInsets(top: 1.04, leading: 1, bottom: 1.04, trailing: 1))
                                        .frame(width: 12, height: 12)
                                        Text("4.0")
                                            .font(Font.custom("Manrope", size: 14))
                                            .lineSpacing(19.60)
                                            .foregroundColor(.black)
                                            .opacity(0.40)
                                    }
                                    .cornerRadius(30)
                                }
                                .frame(width: 147)
                                HStack(spacing: 6) {
                                    Text("Hair specialist")
                                        .font(Font.custom("Manrope", size: 14))
                                        .lineSpacing(19.60)
                                        .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                                    HStack(spacing: 4) {
                                        Text("Book")
                                            .font(Font.custom("Manrope", size: 12))
                                            .lineSpacing(16.80)
                                            .foregroundColor(.white)
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                                    .background(.black)
                                    .cornerRadius(30)
                                }
                                .frame(width: 147)
                            }
                            .frame(height: 53)
                        }
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 15, trailing: 5))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .inset(by: 0.25)
                                .stroke(
                                    Color(red: 0, green: 0, blue: 0).opacity(0.30), lineWidth: 0.25
                                )
                        )
                        VStack(spacing: 8) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 157, height: 120)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/157x120"))
                                )
                                .cornerRadius(15)
                            VStack(alignment: .leading, spacing: 6) {
                                HStack(spacing: 6) {
                                    HStack(spacing: 4) {
                                        Text("Jenny Wilson")
                                            .font(Font.custom("Manrope", size: 14).weight(.bold))
                                            .lineSpacing(19.60)
                                            .foregroundColor(.black)
                                        ZStack() { }
                                            .frame(width: 12, height: 12)
                                    }
                                    HStack(spacing: 3) {
                                        HStack(spacing: 0) {
                                            
                                        }
                                        .padding(EdgeInsets(top: 1.04, leading: 1, bottom: 1.04, trailing: 1))
                                        .frame(width: 12, height: 12)
                                        Text("4.0")
                                            .font(Font.custom("Manrope", size: 14))
                                            .lineSpacing(19.60)
                                            .foregroundColor(.black)
                                            .opacity(0.40)
                                    }
                                    .cornerRadius(30)
                                }
                                .frame(width: 147)
                                HStack(spacing: 6) {
                                    Text("Face specialist")
                                        .font(Font.custom("Manrope", size: 14))
                                        .lineSpacing(19.60)
                                        .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                                    HStack(spacing: 4) {
                                        Text("Book")
                                            .font(Font.custom("Manrope", size: 12))
                                            .lineSpacing(16.80)
                                            .foregroundColor(.white)
                                    }
                                    .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                                    .background(.black)
                                    .cornerRadius(30)
                                }
                                .frame(width: 147)
                            }
                            .frame(height: 53)
                        }
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 15, trailing: 5))
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .inset(by: 0.25)
                                .stroke(
                                    Color(red: 0, green: 0, blue: 0).opacity(0.30), lineWidth: 0.25
                                )
                        )
                    }
                }
                .offset(x: -0.50, y: -150)
                HStack(alignment: .top, spacing: 12) {
                    VStack(spacing: 10) {
                        HStack(spacing: 6) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                        }
                        .padding(18)
                        .background(Color(red: 0.70, green: 1, blue: 0.47))
                        .cornerRadius(40)
                        Text("Haircuts")
                            .font(Font.custom("Manrope", size: 12).weight(.semibold))
                            .lineSpacing(16.80)
                            .foregroundColor(.black)
                    }
                    VStack(spacing: 10) {
                        HStack(spacing: 6) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                        }
                        .padding(18)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .inset(by: 0.25)
                                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
                        )
                        Text("Make up")
                            .font(Font.custom("Manrope", size: 12))
                            .lineSpacing(16.80)
                            .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                    }
                    VStack(spacing: 10) {
                        HStack(spacing: 6) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                        }
                        .padding(18)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .inset(by: 0.25)
                                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
                        )
                        Text("Manicure")
                            .font(Font.custom("Manrope", size: 12))
                            .lineSpacing(16.80)
                            .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                    }
                    VStack(spacing: 10) {
                        HStack(spacing: 6) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                        }
                        .padding(18)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .inset(by: 0.25)
                                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
                        )
                        Text("Massage")
                            .font(Font.custom("Manrope", size: 12))
                            .lineSpacing(16.80)
                            .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                    }
                    VStack(spacing: 10) {
                        HStack(spacing: 6) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
                                )
                        }
                        .padding(18)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .inset(by: 0.25)
                                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
                        )
                        Text("Hairstyling")
                            .font(Font.custom("Manrope", size: 12))
                            .lineSpacing(16.80)
                            .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                    }
                }
                .frame(width: 365)
                .offset(x: 10, y: -572.50)
                ZStack() {
                    ZStack() {
                        Text("25%")
                            .font(Font.custom("Manrope", size: 40).weight(.bold))
                            .lineSpacing(48)
                            .foregroundColor(.black)
                            .offset(x: -15, y: 0)
                        Text("Off")
                            .font(Font.custom("Manrope", size: 16).weight(.bold))
                            .lineSpacing(21.60)
                            .foregroundColor(.black)
                            .offset(x: 45, y: 7)
                    }
                    .frame(width: 114, height: 48)
                    .offset(x: -110.50, y: -56)
                    HStack(spacing: 10) {
                        Text("Book now")
                            .font(Font.custom("Manrope", size: 14).weight(.medium))
                            .lineSpacing(19.60)
                            .foregroundColor(.white)
                    }
                    .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
                    .background(.black)
                    .cornerRadius(30)
                    .offset(x: -111, y: 66)
                    Text("Vourcher for you next\nhaircut service")
                        .font(Font.custom("Manrope", size: 14))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                        .offset(x: -98.50, y: -8)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 176, height: 190)
                        .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/176x190"))
                        )
                        .cornerRadius(20)
                        .offset(x: 265.50, y: 0)
                        .rotationEffect(.degrees(-180))
                }
                .frame(width: 365, height: 200)
                .background(Color(red: 0.70, green: 1, blue: 0.47))
                .cornerRadius(25)
                .offset(x: 0, y: -399)
                VStack(spacing: 15) {
                    HStack(spacing: 13) {
                        Text("Nearest salon")
                            .font(Font.custom("Manrope", size: 16).weight(.bold))
                            .lineSpacing(21.60)
                            .foregroundColor(.black)
                        Text("View all")
                            .font(Font.custom("Manrope", size: 14))
                            .lineSpacing(19.60)
                            .foregroundColor(.black)
                            .opacity(0.40)
                    }
                    .frame(maxWidth: .infinity)
                    VStack(spacing: 10) {
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 365, height: 230)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/365x230"))
                                )
                                .cornerRadius(25)
                                .offset(x: 0, y: 0)
                            VStack(alignment: .leading, spacing: 5) {
                                HStack(spacing: 5) {
                                    ZStack() {
                                        Text("Lotus Salon")
                                            .font(Font.custom("Manrope", size: 16).weight(.bold))
                                            .lineSpacing(21.60)
                                            .foregroundColor(.black)
                                            .offset(x: -8, y: 0)
                                        ZStack() { }
                                            .frame(width: 12, height: 12)
                                            .offset(x: 48, y: 0.50)
                                    }
                                    HStack(spacing: 3) {
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        .opacity(0.40)
                                        Text("4.0")
                                            .font(Font.custom("Manrope", size: 14).weight(.semibold))
                                            .lineSpacing(19.60)
                                            .foregroundColor(.black)
                                    }
                                    .cornerRadius(30)
                                }
                                .frame(width: 345)
                                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                                    .font(Font.custom("Manrope", size: 14))
                                    .lineSpacing(19.60)
                                    .foregroundColor(.black)
                                    .opacity(0.70)
                                HStack(spacing: 5) {
                                    HStack(spacing: 0) {
                                        ZStack() { }
                                            .frame(width: 14, height: 14)
                                    }
                                    .frame(width: 14, height: 14)
                                    Text("8.5 min (4.5 km)")
                                        .font(Font.custom("Manrope", size: 14))
                                        .lineSpacing(19.60)
                                        .foregroundColor(.black)
                                        .opacity(0.70)
                                }
                            }
                            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                            .background(Color(red: 1, green: 1, blue: 1).opacity(0.45))
                            .cornerRadius(25)
                            .offset(x: 0, y: 64)
                            HStack(spacing: 0) {
                                ZStack() { }
                                    .frame(width: 20, height: 20)
                            }
                            .frame(width: 20, height: 20)
                            .offset(x: 157.50, y: -90)
                        }
                        .frame(width: 365, height: 230)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 365, height: 230)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/365x230"))
                                )
                                .cornerRadius(25)
                                .offset(x: 0, y: 0)
                            VStack(alignment: .leading, spacing: 5) {
                                HStack(spacing: 5) {
                                    ZStack() {
                                        Text("Lotus Salon")
                                            .font(Font.custom("Manrope", size: 16).weight(.bold))
                                            .lineSpacing(21.60)
                                            .foregroundColor(.black)
                                            .offset(x: -8, y: 0)
                                        ZStack() { }
                                            .frame(width: 12, height: 12)
                                            .offset(x: 48, y: 0.50)
                                    }
                                    HStack(spacing: 3) {
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        .opacity(0.40)
                                        Text("4.0")
                                            .font(Font.custom("Manrope", size: 14).weight(.semibold))
                                            .lineSpacing(19.60)
                                            .foregroundColor(.black)
                                    }
                                    .cornerRadius(30)
                                }
                                .frame(width: 345)
                                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                                    .font(Font.custom("Manrope", size: 14))
                                    .lineSpacing(19.60)
                                    .foregroundColor(.black)
                                    .opacity(0.70)
                                HStack(spacing: 5) {
                                    HStack(spacing: 0) {
                                        ZStack() { }
                                            .frame(width: 14, height: 14)
                                    }
                                    .frame(width: 14, height: 14)
                                    Text("8.5 min (4.5 km)")
                                        .font(Font.custom("Manrope", size: 14))
                                        .lineSpacing(19.60)
                                        .foregroundColor(.black)
                                        .opacity(0.70)
                                }
                            }
                            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                            .background(Color(red: 1, green: 1, blue: 1).opacity(0.45))
                            .cornerRadius(25)
                            .offset(x: 0, y: 64)
                            HStack(spacing: 0) {
                                ZStack() { }
                                    .frame(width: 20, height: 20)
                            }
                            .frame(width: 20, height: 20)
                            .offset(x: 157.50, y: -90)
                        }
                        .frame(width: 365, height: 230)
                        ZStack() {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 365, height: 230)
                                .background(
                                    AsyncImage(url: URL(string: "https://via.placeholder.com/365x230"))
                                )
                                .cornerRadius(25)
                                .offset(x: 0, y: 0)
                            VStack(alignment: .leading, spacing: 5) {
                                HStack(spacing: 5) {
                                    ZStack() {
                                        Text("Lotus Salon")
                                            .font(Font.custom("Manrope", size: 16).weight(.bold))
                                            .lineSpacing(21.60)
                                            .foregroundColor(.black)
                                            .offset(x: -8, y: 0)
                                        ZStack() { }
                                            .frame(width: 12, height: 12)
                                            .offset(x: 48, y: 0.50)
                                    }
                                    HStack(spacing: 3) {
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        HStack(spacing: 0) {
                                            ZStack() { }
                                                .frame(width: 12, height: 12)
                                        }
                                        .frame(width: 12, height: 12)
                                        .opacity(0.40)
                                        Text("4.0")
                                            .font(Font.custom("Manrope", size: 14).weight(.semibold))
                                            .lineSpacing(19.60)
                                            .foregroundColor(.black)
                                    }
                                    .cornerRadius(30)
                                }
                                .frame(width: 345)
                                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                                    .font(Font.custom("Manrope", size: 14))
                                    .lineSpacing(19.60)
                                    .foregroundColor(.black)
                                    .opacity(0.70)
                                HStack(spacing: 5) {
                                    HStack(spacing: 0) {
                                        ZStack() { }
                                            .frame(width: 14, height: 14)
                                    }
                                    .frame(width: 14, height: 14)
                                    Text("8.5 min (4.5 km)")
                                        .font(Font.custom("Manrope", size: 14))
                                        .lineSpacing(19.60)
                                        .foregroundColor(.black)
                                        .opacity(0.70)
                                }
                            }
                            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                            .background(Color(red: 1, green: 1, blue: 1).opacity(0.45))
                            .cornerRadius(25)
                            .offset(x: 0, y: 64)
                            HStack(spacing: 0) {
                                ZStack() { }
                                    .frame(width: 20, height: 20)
                            }
                            .frame(width: 20, height: 20)
                            .offset(x: 157.50, y: -90)
                        }
                        .frame(width: 365, height: 230)
                    }
                    .frame(maxWidth: .infinity)
                }
                .offset(x: 0, y: 395.50)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 375, height: 92)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 1, blue: 1).opacity(0), .white]), startPoint: .top, endPoint: .bottom)
                        )
                        .offset(x: 0, y: 0)
                    HStack(alignment: .top, spacing: 0) {
                        HStack(alignment: .top, spacing: 0) {
                            HStack(spacing: 8) {
                                HStack(spacing: 0) {
                                    ZStack() { }
                                        .frame(width: 24, height: 24)
                                }
                                .frame(width: 24, height: 24)
                            }
                            .padding(20)
                            .background(Color(red: 0.70, green: 1, blue: 0.47))
                            .cornerRadius(40)
                            HStack(spacing: 8) {
                                HStack(spacing: 0) {
                                    ZStack() { }
                                        .frame(width: 24, height: 24)
                                }
                                .frame(width: 24, height: 24)
                            }
                            .padding(20)
                            .background(.white)
                            .cornerRadius(40)
                            HStack(spacing: 8) {
                                HStack(spacing: 0) {
                                    ZStack() { }
                                        .frame(width: 20, height: 20)
                                }
                                .padding(2)
                                .frame(width: 24, height: 24)
                            }
                            .padding(20)
                            .background(.white)
                            .cornerRadius(40)
                            HStack(spacing: 8) {
                                HStack(spacing: 0) {
                                    ZStack() {
                                        Group {
                                            
                                        }
                                        Group {
                                            
                                        }
                                    }
                                    .frame(width: 24, height: 24)
                                }
                                .frame(width: 24, height: 24)
                            }
                            .padding(20)
                            .background(.white)
                            .cornerRadius(40)
                            HStack(spacing: 8) {
                                HStack(spacing: 0) {
                                    ZStack() { }
                                        .frame(width: 24, height: 24)
                                }
                                .frame(width: 24, height: 24)
                            }
                            .padding(20)
                            .background(.white)
                            .cornerRadius(40)
                        }
                        .padding(4)
                        .background(Color(red: 0, green: 0, blue: 0).opacity(0.06))
                        .cornerRadius(40)
                    }
                    .frame(width: 328, height: 72)
                    .offset(x: 0.50, y: -10)
                }
                .frame(width: 375, height: 92)
                .offset(x: 0, y: 858)
                HStack(alignment: .top, spacing: 12) {
                    VStack(spacing: 0) {
                        ZStack() {
                            HStack(spacing: 0) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 64.86, height: 86.34)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/65x86"))
                                    )
                            }
                            .frame(width: 60.63, height: 60.63)
                            .background(.white)
                            .cornerRadius(100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .inset(by: 0.25)
                                    .stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 0.25)
                            )
                            .offset(x: -0.68, y: -0)
                            ZStack() {
                                Ellipse()
                                    .foregroundColor(.clear)
                                    .frame(width: 20, height: 20)
                                    .background(Color(red: 0.70, green: 1, blue: 0.47))
                                    .offset(x: 0, y: 0)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 10, height: 10)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/10x10"))
                                    )
                                    .offset(x: 0, y: 0)
                            }
                            .frame(width: 20, height: 20)
                            .offset(x: 20, y: 20)
                        }
                        .frame(width: 72, height: 72)
                        Text("Ruffles")
                            .font(Font.custom("Manrope", size: 11.50))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 0.43, green: 0.43, blue: 0.43))
                    }
                    .frame(width: 72, height: 97.75)
                    VStack(spacing: 0) {
                        ZStack() {
                            HStack(spacing: 0) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 64.86, height: 86.34)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/65x86"))
                                    )
                            }
                            .frame(width: 60.63, height: 60.63)
                            .background(.white)
                            .cornerRadius(100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .inset(by: 0.25)
                                    .stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 0.25)
                            )
                            .offset(x: -0, y: -0)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 72, height: 72)
                                .overlay(
                                    Ellipse()
                                        .inset(by: 1.25)
                                        .stroke(Color(red: 0.70, green: 1, blue: 0.47), lineWidth: 1.25)
                                )
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 72, height: 72)
                        Text("sabanok...")
                            .font(Font.custom("Manrope", size: 11.50))
                            .lineSpacing(22)
                            .foregroundColor(.black)
                    }
                    VStack(spacing: 0) {
                        ZStack() {
                            HStack(spacing: 0) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 64.86, height: 86.34)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/65x86"))
                                    )
                            }
                            .frame(width: 60.63, height: 60.63)
                            .background(.white)
                            .cornerRadius(100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .inset(by: 0.25)
                                    .stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 0.25)
                            )
                            .offset(x: -0, y: -0)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 72, height: 72)
                                .overlay(
                                    Ellipse()
                                        .inset(by: 1.25)
                                        .stroke(Color(red: 0.70, green: 1, blue: 0.47), lineWidth: 1.25)
                                )
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 72, height: 72)
                        Text("blue_bouy")
                            .font(Font.custom("Manrope", size: 11.50))
                            .lineSpacing(22)
                            .foregroundColor(.black)
                    }
                    VStack(spacing: 0) {
                        ZStack() {
                            HStack(spacing: 0) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 64.86, height: 86.34)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/65x86"))
                                    )
                            }
                            .frame(width: 60.63, height: 60.63)
                            .background(.white)
                            .cornerRadius(100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .inset(by: 0.25)
                                    .stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 0.25)
                            )
                            .offset(x: -0, y: -0)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 72, height: 72)
                                .overlay(
                                    Ellipse()
                                        .inset(by: 1.25)
                                        .stroke(Color(red: 0.70, green: 1, blue: 0.47), lineWidth: 1.25)
                                )
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 72, height: 72)
                        Text("waggles")
                            .font(Font.custom("Manrope", size: 11.50))
                            .lineSpacing(22)
                            .foregroundColor(.black)
                    }
                    VStack(spacing: 0) {
                        ZStack() {
                            HStack(spacing: 0) {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 64.86, height: 86.34)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/65x86"))
                                    )
                            }
                            .frame(width: 60.63, height: 60.63)
                            .background(.white)
                            .cornerRadius(100)
                            .overlay(
                                RoundedRectangle(cornerRadius: 100)
                                    .inset(by: 0.25)
                                    .stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 0.25)
                            )
                            .offset(x: -0, y: -0)
                            Ellipse()
                                .foregroundColor(.clear)
                                .frame(width: 72, height: 72)
                                .overlay(
                                    Ellipse()
                                        .inset(by: 1.25)
                                        .stroke(Color(red: 0.70, green: 1, blue: 0.47), lineWidth: 1.25)
                                )
                                .offset(x: 0, y: 0)
                        }
                        .frame(width: 72, height: 72)
                        Text("steve.loves")
                            .font(Font.custom("Manrope", size: 11.50))
                            .lineSpacing(22)
                            .foregroundColor(.black)
                    }
                }
                .padding(EdgeInsets(top: 8, leading: 0, bottom: 0, trailing: 0))
                .frame(width: 360)
                .offset(x: 7.50, y: -685.12)
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 1, y: 2
                )
            }
            .frame(width: 375, height: 1808)
            .background(.white)
            .cornerRadius(40)
        }
    }
}

#Preview {
    TestScreen()
}
