
import SwiftUI



struct MessageChatRoomScreen: View {
  var body: some View {
    ZStack() {
      VStack(alignment: .leading, spacing: 20) {
        HStack(alignment: .top, spacing: 77) {
          HStack(spacing: 12) {
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
                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
            )
            Text("Messages")
              .font(Font.custom("Manrope", size: 16).weight(.bold))
              .lineSpacing(21.60)
              .foregroundColor(.black)
          }
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
              .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
          )
        }
        .frame(width: 345)
        HStack(spacing: 10) {
          HStack(spacing: 10) {
            Text("Message")
              .font(Font.custom("Manrope", size: 14).weight(.medium))
              .lineSpacing(19.60)
              .foregroundColor(.white)
          }
          .padding(EdgeInsets(top: 9, leading: 20, bottom: 10, trailing: 20))
          .background(.black)
          .cornerRadius(30)
          HStack(spacing: 10) {
            Text("Unread")
              .font(Font.custom("Manrope", size: 14))
              .lineSpacing(19.60)
              .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
          }
          .padding(EdgeInsets(top: 9, leading: 12, bottom: 10, trailing: 12))
          .cornerRadius(45)
          HStack(spacing: 10) {
            Text("Group")
              .font(Font.custom("Manrope", size: 14))
              .lineSpacing(19.60)
              .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
          }
          .padding(EdgeInsets(top: 9, leading: 12, bottom: 10, trailing: 12))
          .cornerRadius(45)
          HStack(spacing: 10) {
            Text("Calls")
              .font(Font.custom("Manrope", size: 14))
              .lineSpacing(19.60)
              .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
          }
          .padding(EdgeInsets(top: 9, leading: 12, bottom: 10, trailing: 12))
          .cornerRadius(45)
        }
        .frame(width: 345)
        VStack(alignment: .leading, spacing: 25) {
          Group {
            HStack(spacing: 10) {
              ZStack() {
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 44, height: 44)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                  )
                  .offset(x: 0, y: 0)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 8, height: 8)
                  .background(Color(red: 0.08, green: 0.69, blue: 0.03))
                  .overlay(
                    Ellipse()
                      .inset(by: -0.75)
                      .stroke(.white, lineWidth: 0.75)
                  )
                  .offset(x: 16, y: 16)
              }
              .frame(width: 44, height: 44)
              VStack(alignment: .leading, spacing: 4) {
                Text("Bessie Cooper")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
              }
            }
            HStack(spacing: 10) {
              ZStack() {
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 44, height: 44)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                  )
                  .offset(x: 0, y: 0)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 8, height: 8)
                  .background(Color(red: 0.08, green: 0.69, blue: 0.03))
                  .overlay(
                    Ellipse()
                      .inset(by: -0.75)
                      .stroke(.white, lineWidth: 0.75)
                  )
                  .offset(x: 16, y: 16)
              }
              .frame(width: 44, height: 44)
              VStack(alignment: .leading, spacing: 4) {
                Text("Marvin McKinney")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("2")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
              }
            }
            HStack(spacing: 10) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 44, height: 44)
                .background(
                  AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                )
              VStack(alignment: .leading, spacing: 4) {
                Text("Devon Lane")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
              }
            }
            HStack(spacing: 10) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 44, height: 44)
                .background(
                  AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                )
              VStack(alignment: .leading, spacing: 4) {
                Text("Savannah Nguyen")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
                .opacity(0)
              }
            }
            HStack(spacing: 10) {
              ZStack() {
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 44, height: 44)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                  )
                  .offset(x: 0, y: 0)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 8, height: 8)
                  .background(Color(red: 0.08, green: 0.69, blue: 0.03))
                  .overlay(
                    Ellipse()
                      .inset(by: -0.75)
                      .stroke(.white, lineWidth: 0.75)
                  )
                  .offset(x: 16, y: 16)
              }
              .frame(width: 44, height: 44)
              VStack(alignment: .leading, spacing: 4) {
                Text("Kathryn Murphy")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
                .opacity(0)
              }
            }
            HStack(spacing: 10) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 44, height: 44)
                .background(
                  AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                )
              VStack(alignment: .leading, spacing: 4) {
                Text("Jenny Wilson")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
                .opacity(0)
              }
            }
            HStack(spacing: 10) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 44, height: 44)
                .background(
                  AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                )
              VStack(alignment: .leading, spacing: 4) {
                Text("Darlene Robertson")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
                .opacity(0)
              }
            }
            HStack(spacing: 10) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 44, height: 44)
                .background(
                  AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                )
              VStack(alignment: .leading, spacing: 4) {
                Text("Jacob Jones")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
                .opacity(0)
              }
            }
            HStack(spacing: 10) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 44, height: 44)
                .background(
                  AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                )
              VStack(alignment: .leading, spacing: 4) {
                Text("Jane Cooper")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("1")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
                .opacity(0)
              }
            }
            HStack(spacing: 10) {
              ZStack() {
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 44, height: 44)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/44x44"))
                  )
                  .offset(x: 0, y: 0)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 8, height: 8)
                  .background(Color(red: 0.08, green: 0.69, blue: 0.03))
                  .overlay(
                    Ellipse()
                      .inset(by: -0.75)
                      .stroke(.white, lineWidth: 0.75)
                  )
                  .offset(x: 16, y: 16)
              }
              .frame(width: 44, height: 44)
              VStack(alignment: .leading, spacing: 4) {
                Text("Cameron Williamson")
                  .font(Font.custom("Manrope", size: 14).weight(.bold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              VStack(alignment: .trailing, spacing: 4) {
                Text("3:50 pm")
                  .font(Font.custom("Manrope", size: 12))
                  .lineSpacing(16.80)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 18, height: 18)
                    .background(Color(red: 0.91, green: 0, blue: 0))
                    .cornerRadius(20)
                    .offset(x: 0, y: 0)
                  Text("13")
                    .font(Font.custom("Manrope", size: 10))
                    .lineSpacing(14)
                    .foregroundColor(.white)
                    .offset(x: -0.20, y: -0.35)
                }
                .frame(width: 18, height: 18)
              }
            }
          }
        }
      }
      .offset(x: 0, y: 18)
      ZStack() {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 375, height: 92)
          .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 1, green: 1, blue: 1).opacity(0), .white]), startPoint: .top, endPoint: .bottom)
          )
          .offset(x: 0, y: 0)
        HStack(alignment: .top, spacing: 0) {
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
          .background(Color(red: 0.70, green: 1, blue: 0.47))
          .cornerRadius(40)
        }
        .padding(4)
        .frame(width: 328, height: 72)
        .background(Color(red: 0, green: 0, blue: 0).opacity(0.06))
        .cornerRadius(40)
        .offset(x: -3.50, y: -10)
      }
      .frame(width: 375, height: 92)
      .offset(x: 0, y: 360)
    }
    .frame(width: 375, height: 812)
    .background(.white)
    .cornerRadius(40);
  }
}

#Preview {
    MessageChatRoomScreen()
}
