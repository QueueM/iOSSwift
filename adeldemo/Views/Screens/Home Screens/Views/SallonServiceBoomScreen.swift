

import SwiftUI

struct SallonServiceBoomScreen: View {
  var body: some View {
    ZStack() {
      VStack(spacing: 0) {
        VStack(spacing: 30) {
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 365, height: 380)
              .background(
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.01, green: 0.06, blue: 0.04).opacity(0.30), Color(red: 0.01, green: 0.06, blue: 0.04).opacity(0), Color(red: 0.01, green: 0.06, blue: 0.04).opacity(0), Color(red: 0.01, green: 0.06, blue: 0.04)]), startPoint: .top, endPoint: .bottom)
              )
              .cornerRadius(35)
              .offset(x: 0, y: 0)
            HStack(spacing: 177) {
              HStack(spacing: 0) {
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
                  .stroke(.white, lineWidth: 0.25)
              )
              HStack(spacing: 5) {
                HStack(spacing: 6) {
                  HStack(spacing: 0) {
                    ZStack() { }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                  }
                  .padding(
                    EdgeInsets(top: 2.50, leading: 3.33, bottom: 2.50, trailing: 4.17)
                  )
                  .frame(width: 20, height: 20)
                }
                .padding(12)
                .cornerRadius(40)
                .overlay(
                  RoundedRectangle(cornerRadius: 40)
                    .inset(by: 0.25)
                    .stroke(.white, lineWidth: 0.25)
                )
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
                    .stroke(.white, lineWidth: 0.25)
                )
              }
            }
            .frame(width: 345, height: 44)
            .offset(x: 0, y: -143)
            HStack(alignment: .bottom, spacing: 49) {
              VStack(alignment: .leading, spacing: 4) {
                HStack(alignment: .top, spacing: 5) {
                  HStack(spacing: 5) {
                    Text("Open")
                      .font(Font.custom("Manrope", size: 12))
                      .lineSpacing(16.80)
                      .foregroundColor(.white)
                  }
                  .padding(EdgeInsets(top: 4, leading: 12, bottom: 4, trailing: 12))
                  .background(Color(red: 0.08, green: 0.69, blue: 0.03))
                  .cornerRadius(30)
                  HStack(spacing: 5) {
                    HStack(spacing: 0) {
                      ZStack() { }
                      .frame(width: 14, height: 14)
                    }
                    .frame(width: 14, height: 14)
                    Text("4.0")
                      .font(Font.custom("Manrope", size: 12))
                      .lineSpacing(16.80)
                      .foregroundColor(.white)
                  }
                  .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10))
                  .background(Color(red: 1, green: 1, blue: 1).opacity(0.25))
                  .cornerRadius(30)
                }
                Text("Lotus Salon")
                  .font(Font.custom("Manrope", size: 22).weight(.bold))
                  .lineSpacing(28.60)
                  .foregroundColor(.white)
                Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                  .font(Font.custom("Manrope", size: 14))
                  .lineSpacing(19.60)
                  .foregroundColor(.white)
              }
              HStack(alignment: .top, spacing: 8) {
                HStack(spacing: 0) {
                  HStack(spacing: 0) {
                    ZStack() { }
                    .frame(width: 20, height: 20)
                  }
                  .frame(width: 20, height: 20)
                }
                .padding(12)
                .background(.white)
                .cornerRadius(40)
                HStack(spacing: 0) {
                  HStack(spacing: 0) {
                    ZStack() { }
                    .frame(width: 20, height: 20)
                  }
                  .frame(width: 20, height: 20)
                }
                .padding(12)
                .background(Color(red: 0.70, green: 1, blue: 0.47))
                .cornerRadius(40)
              }
            }
            .frame(width: 345, height: 82)
            .offset(x: 0, y: 129)
          }
          .frame(width: 365, height: 380)
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
          VStack(spacing: 25) {
            VStack(alignment: .leading, spacing: 10) {
              HStack(alignment: .top, spacing: 80) {
                HStack(spacing: 6) {
                  Text("About")
                    .font(Font.custom("Manrope", size: 14).weight(.semibold))
                    .lineSpacing(19.60)
                    .foregroundColor(.black)
                }
                HStack(spacing: 0) {
                  Text("Services")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
                .frame(width: 52, height: 20)
                HStack(spacing: 0) {
                  Text("Package")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
                .frame(width: 52, height: 20)
                HStack(spacing: 0) {
                  Text("Gallery")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
                .padding(EdgeInsets(top: 0, leading: 4, bottom: 0, trailing: 3))
                .frame(width: 52, height: 20)
              }
              .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
              .frame(width: 345)
            }
            .frame(width: 345, height: 30)
            VStack(alignment: .leading, spacing: 8) {
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                .font(Font.custom("Manrope", size: 14))
                .lineSpacing(19.60)
                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam...Read More")
                .font(Font.custom("Manrope", size: 14))
                .lineSpacing(19.60)
                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
            }
            VStack(alignment: .leading, spacing: 12) {
              HStack(spacing: 12) {
                HStack(spacing: 0) {
                  HStack(spacing: 0) {
                    ZStack() { }
                    .frame(width: 20, height: 20)
                  }
                  .frame(width: 20, height: 20)
                }
                .padding(12)
                .background(Color(red: 0.70, green: 1, blue: 0.47))
                .cornerRadius(40)
                VStack(alignment: .leading, spacing: 4) {
                  Text("Opening Hours")
                    .font(Font.custom("Manrope", size: 16).weight(.bold))
                    .lineSpacing(21.60)
                    .foregroundColor(.black)
                  Text("Lorem ipsum dolor sit amet consectetur ")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
              }
              .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
              .overlay(
                Rectangle()
                  .inset(by: 0.25)
                  .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
              )
              VStack(alignment: .leading, spacing: 8) {
                HStack(alignment: .top, spacing: 4) {
                  Text("Monday - Friday :")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("8:30 am - 9:30 pm")
                    .font(Font.custom("Manrope", size: 14).weight(.medium))
                    .lineSpacing(19.60)
                    .foregroundColor(.black)
                }
                HStack(alignment: .top, spacing: 4) {
                  Text("Saturday - Sunday:")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("9:00 am - 1:00 pm")
                    .font(Font.custom("Manrope", size: 14).weight(.medium))
                    .lineSpacing(19.60)
                    .foregroundColor(.black)
                }
              }
            }
            .padding(15)
            .cornerRadius(20)
            .overlay(
              RoundedRectangle(cornerRadius: 20)
                .inset(by: 0.25)
                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
            )
          }
        }
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 375, height: 455)
            .background(
              LinearGradient(gradient: Gradient(colors: [.white, Color(red: 1, green: 1, blue: 1).opacity(0)]), startPoint: .top, endPoint: .bottom)
            )
            .offset(x: 0, y: 0)
          ZStack() {
            VStack(spacing: 0) {
              VStack(spacing: 0) {
                HStack(spacing: 5) {
                  Text("Lotus Salon")
                    .font(Font.custom("Manrope", size: 10).weight(.medium))
                    .lineSpacing(14)
                    .foregroundColor(.black)
                  HStack(spacing: 2) {
                    HStack(spacing: 0) {
                      ZStack() { }
                      .frame(width: 10, height: 10)
                    }
                    .frame(width: 10, height: 10)
                    Text("4.0")
                      .font(Font.custom("Manrope", size: 8).weight(.semibold))
                      .lineSpacing(11.20)
                      .foregroundColor(.black)
                  }
                  .cornerRadius(30)
                }
                .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
                .background(.white)
                .cornerRadius(15)
              }
              .shadow(
                color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 30, y: 8
              )
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 54, height: 54)
                .background(
                  AsyncImage(url: URL(string: "https://via.placeholder.com/54x54"))
                )
                .cornerRadius(40)
                .overlay(
                  RoundedRectangle(cornerRadius: 40)
                    .inset(by: 1)
                    .stroke(.white, lineWidth: 1)
                )
                .shadow(
                  color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 30, y: 8
                )
            }
            .frame(width: 102, height: 83)
            .offset(x: -52.39, y: -86)
            ZStack() {
              HStack(spacing: 0) {
                ZStack() { }
                .frame(width: 24, height: 24)
              }
              .frame(width: 24, height: 24)
              .offset(x: 0, y: -4)
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 26, height: 13)
                .background(Color(red: 0.91, green: 0, blue: 0))
                .offset(x: 0, y: 9.50)
                .opacity(0.20)
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 6, height: 3)
                .background(Color(red: 0.91, green: 0, blue: 0))
                .offset(x: 0, y: 9.50)
            }
            .frame(width: 26, height: 32)
            .offset(x: 72.61, y: 111.50)
          }
          .frame(width: 206.77, height: 255)
          .offset(x: -64.11, y: -10)
        }
        .frame(width: 375, height: 455)
      }
      .offset(x: 5, y: 365)
      Rectangle()
        .foregroundColor(.clear)
        .frame(width: 375, height: 812)
        .background(Color(red: 0, green: 0, blue: 0).opacity(0.60))
        .offset(x: 0, y: 0)
      ZStack() {
        VStack(alignment: .leading, spacing: 20) {
          HStack(spacing: 15) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 100, height: 90)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/100x90"))
              )
              .cornerRadius(15)
            VStack(alignment: .leading, spacing: 12) {
              VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 5) {
                  Text("Pixie haircut")
                    .font(Font.custom("Manrope", size: 16).weight(.bold))
                    .lineSpacing(21.60)
                    .foregroundColor(.black)
                  HStack(spacing: 0) {

                  }
                  .padding(2)
                  .frame(width: 24, height: 24)
                }
                .frame(width: 220)
                HStack(alignment: .top, spacing: 4) {
                  Text("45 min")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("20 booked")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
              }
              Text("$15.00")
                .font(Font.custom("Manrope", size: 16).weight(.bold))
                .lineSpacing(21.60)
                .foregroundColor(.black)
            }
          }
          .frame(width: 335)
          HStack(spacing: 15) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 100, height: 90)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/100x90"))
              )
              .cornerRadius(15)
            VStack(alignment: .leading, spacing: 12) {
              VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 5) {
                  Text("Bangs")
                    .font(Font.custom("Manrope", size: 16).weight(.bold))
                    .lineSpacing(21.60)
                    .foregroundColor(.black)
                  HStack(spacing: 0) {
                    ZStack() { }
                    .frame(width: 24, height: 24)
                  }
                  .frame(width: 24, height: 24)
                }
                .frame(width: 220)
                HStack(alignment: .top, spacing: 4) {
                  Text("45 min")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("20 booked")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
              }
              Text("$15.00")
                .font(Font.custom("Manrope", size: 16).weight(.bold))
                .lineSpacing(21.60)
                .foregroundColor(.black)
            }
          }
          .frame(width: 335)
          HStack(spacing: 15) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 100, height: 90)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/100x90"))
              )
              .cornerRadius(15)
            VStack(alignment: .leading, spacing: 12) {
              VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 5) {
                  Text("Layers")
                    .font(Font.custom("Manrope", size: 16).weight(.bold))
                    .lineSpacing(21.60)
                    .foregroundColor(.black)
                  HStack(spacing: 0) {

                  }
                  .padding(2)
                  .frame(width: 24, height: 24)
                }
                .frame(width: 220)
                HStack(alignment: .top, spacing: 4) {
                  Text("45 min")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("20 booked")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
              }
              Text("$15.00")
                .font(Font.custom("Manrope", size: 16).weight(.bold))
                .lineSpacing(21.60)
                .foregroundColor(.black)
            }
          }
          .frame(width: 335)
          HStack(spacing: 15) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 100, height: 90)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/100x90"))
              )
              .cornerRadius(15)
            VStack(alignment: .leading, spacing: 12) {
              VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 5) {
                  Text("Bob haircut")
                    .font(Font.custom("Manrope", size: 16).weight(.bold))
                    .lineSpacing(21.60)
                    .foregroundColor(.black)
                  HStack(spacing: 0) {

                  }
                  .padding(2)
                  .frame(width: 24, height: 24)
                }
                .frame(width: 220)
                HStack(alignment: .top, spacing: 4) {
                  Text("45 min")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("20 booked")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
              }
              Text("$15.00")
                .font(Font.custom("Manrope", size: 16).weight(.bold))
                .lineSpacing(21.60)
                .foregroundColor(.black)
            }
          }
          .frame(width: 335)
          HStack(spacing: 15) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 100, height: 90)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/100x90"))
              )
              .cornerRadius(15)
            VStack(alignment: .leading, spacing: 12) {
              VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 5) {
                  Text("Feather cut")
                    .font(Font.custom("Manrope", size: 16).weight(.bold))
                    .lineSpacing(21.60)
                    .foregroundColor(.black)
                  HStack(spacing: 0) {

                  }
                  .padding(2)
                  .frame(width: 24, height: 24)
                }
                .frame(width: 220)
                HStack(alignment: .top, spacing: 4) {
                  Text("45 min")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("20 booked")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
              }
              Text("$15.00")
                .font(Font.custom("Manrope", size: 16).weight(.bold))
                .lineSpacing(21.60)
                .foregroundColor(.black)
            }
          }
          .frame(width: 335)
          HStack(spacing: 15) {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 100, height: 90)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/100x90"))
              )
              .cornerRadius(15)
            VStack(alignment: .leading, spacing: 12) {
              VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 5) {
                  Text("Step cut")
                    .font(Font.custom("Manrope", size: 16).weight(.bold))
                    .lineSpacing(21.60)
                    .foregroundColor(.black)
                  HStack(spacing: 0) {

                  }
                  .padding(2)
                  .frame(width: 24, height: 24)
                }
                .frame(width: 220)
                HStack(alignment: .top, spacing: 4) {
                  Text("45 min")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  Text("20 booked")
                    .font(Font.custom("Manrope", size: 14))
                    .lineSpacing(19.60)
                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                }
              }
              Text("$15.00")
                .font(Font.custom("Manrope", size: 16).weight(.bold))
                .lineSpacing(21.60)
                .foregroundColor(.black)
            }
          }
          .frame(width: 335)
        }
        .offset(x: 0, y: 97)
        HStack(spacing: 12) {
          Text("Gender")
            .font(Font.custom("Manrope", size: 16).weight(.bold))
            .lineSpacing(21.60)
            .foregroundColor(.black)
          HStack(alignment: .top, spacing: 20) {
            HStack(spacing: 5) {
              HStack(spacing: 0) {

              }
              .padding(
                EdgeInsets(top: 1.50, leading: 1.50, bottom: 1.50, trailing: 1.51)
              )
              .frame(width: 18, height: 18)
              Text("Man")
                .font(Font.custom("Manrope", size: 12))
                .lineSpacing(16.80)
                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
            }
            HStack(spacing: 5) {
              HStack(spacing: 0) {
                ZStack() { }
                .frame(width: 18, height: 18)
              }
              .frame(width: 18, height: 18)
              Text("Woman")
                .font(Font.custom("Manrope", size: 12).weight(.semibold))
                .lineSpacing(16.80)
                .foregroundColor(.black)
            }
          }
        }
        .frame(width: 335)
        .offset(x: 0, y: -264)
        HStack(spacing: 52) {
          Text("Hair Cut")
            .font(Font.custom("Manrope", size: 18).weight(.bold))
            .lineSpacing(24.30)
            .foregroundColor(.black)
          HStack(spacing: 0) {
            ZStack() {
              ZStack() { }
              .frame(width: 10.50, height: 10.50)
              .offset(x: 0, y: -0)
            }
            .frame(width: 18, height: 18)
          }
          .frame(width: 18, height: 18)
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
        .frame(width: 335)
        .overlay(
          Rectangle()
            .inset(by: 0.25)
            .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
        )
        .offset(x: 0, y: -312)
        HStack(spacing: 10) {
          Text("Done")
            .font(Font.custom("Manrope", size: 16).weight(.medium))
            .lineSpacing(21.60)
            .foregroundColor(.black)
        }
        .padding(EdgeInsets(top: 13, leading: 35, bottom: 15, trailing: 35))
        .frame(width: 345)
        .background(Color(red: 0.70, green: 1, blue: 0.47))
        .cornerRadius(30)
        .offset(x: 0, y: 319)
      }
      .frame(width: 365, height: 728)
      .background(.white)
      .cornerRadius(35)
      .offset(x: 0, y: 37)
    }
    .frame(width: 375, height: 812)
    .background(.white)
    .cornerRadius(40);
  }
}


#Preview {
    SallonServiceBoomScreen()
}
