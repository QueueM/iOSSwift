//
//import SwiftUI
//
//struct BookAppointmentScreen: View {
//  var body: some View {
//    ZStack() {
//      ZStack() {
//        HStack(spacing: 12) {
//          HStack(spacing: 0) {
//            HStack(spacing: 0) {
//              ZStack() { }
//              .frame(width: 20, height: 20)
//            }
//            .frame(width: 20, height: 20)
//          }
//          .padding(12)
//          .cornerRadius(40)
//          .overlay(
//            RoundedRectangle(cornerRadius: 40)
//              .inset(by: 0.25)
//              .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//          )
//          Text("Book Appointment")
//            .font(Font.custom("Manrope", size: 16).weight(.bold))
//            .lineSpacing(21.60)
//            .foregroundColor(.black)
//        }
//        .frame(width: 201, height: 44)
//        .offset(x: -72, y: -469)
//        VStack(spacing: 30) {
//          ZStack() {
//            Rectangle()
//              .foregroundColor(.clear)
//              .frame(width: 375, height: 66)
//              .background(
//                LinearGradient(gradient: Gradient(colors: [Color(red: 0.97, green: 0.97, blue: 0.97).opacity(0), Color(red: 0.97, green: 0.97, blue: 0.97), Color(red: 0.97, green: 0.97, blue: 0.97), Color(red: 0.97, green: 0.97, blue: 0.97).opacity(0)]), startPoint: .leading, endPoint: .trailing)
//              )
//              .offset(x: 0, y: 0)
//            VStack(spacing: 5) {
//              ZStack() {
//
//              }
//              .frame(width: 24, height: 24)
//              Text("Book Appointment")
//                .font(Font.custom("Manrope", size: 10))
//                .lineSpacing(14)
//                .foregroundColor(.black)
//            }
//            .frame(width: 117, height: 43)
//            .offset(x: -114, y: -1.50)
//            VStack(spacing: 5) {
//              HStack(spacing: 0) {
//
//              }
//              .padding(2)
//              .frame(width: 24, height: 24)
//              Text("Payment")
//                .font(Font.custom("Manrope", size: 10))
//                .lineSpacing(14)
//                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//            }
//            .frame(width: 41, height: 43)
//            .offset(x: 0, y: -1.50)
//            VStack(spacing: 5) {
//              HStack(spacing: 0) {
//
//              }
//              .padding(2)
//              .frame(width: 24, height: 24)
//              Text("Booking successfully")
//                .font(Font.custom("Manrope", size: 10))
//                .lineSpacing(14)
//                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//            }
//            .frame(width: 97, height: 43)
//            .offset(x: 124, y: -1.50)
//          }
//          .frame(width: 375, height: 66)
//          VStack(spacing: 25) {
//            VStack(spacing: 12) {
//              VStack(alignment: .leading, spacing: 15) {
//                Text("Select date")
//                  .font(Font.custom("Manrope", size: 16).weight(.bold))
//                  .lineSpacing(21.60)
//                  .foregroundColor(.black)
//                HStack(spacing: 430) {
//                  HStack(spacing: 0) {
//                    ZStack() { }
//                    .frame(width: 16, height: 16)
//                  }
//                  .frame(width: 16, height: 16)
//                  Text("June, 2024")
//                    .font(Font.custom("Manrope", size: 14).weight(.medium))
//                    .lineSpacing(19.60)
//                    .foregroundColor(.black)
//                  HStack(spacing: 0) {
//                    ZStack() { }
//                    .frame(width: 16, height: 16)
//                  }
//                  .frame(width: 16, height: 16)
//                }
//                .frame(width: 345)
//              }
//              HStack(alignment: .top, spacing: 10) {
//                VStack(spacing: 4) {
//                  Text("Sun")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  VStack(spacing: 10) {
//                    Text("18")
//                      .font(Font.custom("Manrope", size: 20))
//                      .lineSpacing(26)
//                      .foregroundColor(.black)
//                  }
//                  .padding(EdgeInsets(top: 12, leading: 8, bottom: 12, trailing: 8))
//                  .cornerRadius(30)
//                }
//                VStack(spacing: 4) {
//                  Text("Mon")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  VStack(spacing: 10) {
//                    Text("19")
//                      .font(Font.custom("Manrope", size: 20))
//                      .lineSpacing(26)
//                      .foregroundColor(.black)
//                  }
//                  .padding(EdgeInsets(top: 12, leading: 8, bottom: 12, trailing: 8))
//                  .cornerRadius(30)
//                }
//                VStack(spacing: 4) {
//                  Text("Tue")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  VStack(spacing: 10) {
//                    Text("20")
//                      .font(Font.custom("Manrope", size: 20))
//                      .lineSpacing(26)
//                      .foregroundColor(.black)
//                  }
//                  .padding(EdgeInsets(top: 12, leading: 8, bottom: 12, trailing: 8))
//                  .cornerRadius(30)
//                }
//                VStack(spacing: 4) {
//                  Text("Wed")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  VStack(spacing: 10) {
//                    Text("21")
//                      .font(Font.custom("Manrope", size: 20).weight(.bold))
//                      .lineSpacing(26)
//                      .foregroundColor(.black)
//                  }
//                  .padding(EdgeInsets(top: 12, leading: 13, bottom: 12, trailing: 13))
//                  .background(Color(red: 0.70, green: 1, blue: 0.47))
//                  .cornerRadius(30)
//                }
//                VStack(spacing: 4) {
//                  Text("Thu")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  VStack(spacing: 10) {
//                    Text("22")
//                      .font(Font.custom("Manrope", size: 20))
//                      .lineSpacing(26)
//                      .foregroundColor(.black)
//                  }
//                  .padding(EdgeInsets(top: 12, leading: 8, bottom: 12, trailing: 8))
//                  .cornerRadius(30)
//                }
//                VStack(spacing: 4) {
//                  Text("Fri")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  VStack(spacing: 10) {
//                    Text("23")
//                      .font(Font.custom("Manrope", size: 20))
//                      .lineSpacing(26)
//                      .foregroundColor(.black)
//                  }
//                  .padding(EdgeInsets(top: 12, leading: 8, bottom: 12, trailing: 8))
//                  .cornerRadius(30)
//                }
//                VStack(spacing: 4) {
//                  Text("Sat")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  VStack(spacing: 10) {
//                    Text("24")
//                      .font(Font.custom("Manrope", size: 20))
//                      .lineSpacing(26)
//                      .foregroundColor(.black)
//                  }
//                  .padding(EdgeInsets(top: 12, leading: 8, bottom: 12, trailing: 8))
//                  .cornerRadius(30)
//                }
//              }
//              .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
//            }
//            VStack(alignment: .leading, spacing: 15) {
//              HStack(spacing: 12) {
//                Text("Select time")
//                  .font(Font.custom("Manrope", size: 16).weight(.bold))
//                  .lineSpacing(21.60)
//                  .foregroundColor(.black)
//                HStack(alignment: .top, spacing: 20) {
//                  HStack(spacing: 5) {
//                    HStack(spacing: 0) {
//
//                    }
//                    .padding(
//                      EdgeInsets(top: 1.50, leading: 1.50, bottom: 1.50, trailing: 1.51)
//                    )
//                    .frame(width: 18, height: 18)
//                    Text("Am")
//                      .font(Font.custom("Manrope", size: 12))
//                      .lineSpacing(16.80)
//                      .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                  }
//                  HStack(spacing: 5) {
//                    HStack(spacing: 0) {
//                      ZStack() { }
//                      .frame(width: 18, height: 18)
//                    }
//                    .frame(width: 18, height: 18)
//                    Text("Pm")
//                      .font(Font.custom("Manrope", size: 12).weight(.semibold))
//                      .lineSpacing(16.80)
//                      .foregroundColor(.black)
//                  }
//                }
//              }
//              .frame(width: 345)
//              HStack(alignment: .top, spacing: 10) {
//                HStack(spacing: 4) {
//                  Text("01:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(.white)
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .background(.black)
//                .cornerRadius(30)
//                HStack(spacing: 4) {
//                  Text("04:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//                HStack(spacing: 4) {
//                  Text("07:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//                HStack(spacing: 4) {
//                  Text("02:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//                HStack(spacing: 4) {
//                  Text("05:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//                HStack(spacing: 4) {
//                  Text("08:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//                HStack(spacing: 4) {
//                  Text("03:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//                HStack(spacing: 4) {
//                  Text("06:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//                HStack(spacing: 4) {
//                  Text("09:00 pm")
//                    .font(Font.custom("Manrope", size: 12))
//                    .lineSpacing(16.80)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 25))
//                .frame(height: 37)
//                .cornerRadius(30)
//                .overlay(
//                  RoundedRectangle(cornerRadius: 30)
//                    .inset(by: 0.25)
//                    .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//                )
//              }
//              .frame(width: 345)
//            }
//            .padding(EdgeInsets(top: 25, leading: 0, bottom: 0, trailing: 0))
//            .overlay(
//              Rectangle()
//                .inset(by: 0.25)
//                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
//            )
//          }
//          VStack(alignment: .leading, spacing: 15) {
//            Text("Top specialist")
//              .font(Font.custom("Manrope", size: 16).weight(.bold))
//              .lineSpacing(21.60)
//              .foregroundColor(.black)
//            HStack(spacing: 10) {
//              VStack(spacing: 8) {
//                Rectangle()
//                  .foregroundColor(.clear)
//                  .frame(width: 157, height: 120)
//                  .background(
//                    AsyncImage(url: URL(string: "https://via.placeholder.com/157x120"))
//                  )
//                  .cornerRadius(15)
//                VStack(alignment: .leading, spacing: 4) {
//                  HStack(spacing: 6) {
//                    HStack(spacing: 4) {
//                      Text("Jane Cooper")
//                        .font(Font.custom("Manrope", size: 14).weight(.bold))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                      ZStack() { }
//                      .frame(width: 12, height: 12)
//                    }
//                    HStack(spacing: 3) {
//                      HStack(spacing: 0) {
//
//                      }
//                      .padding(EdgeInsets(top: 1.04, leading: 1, bottom: 1.04, trailing: 1))
//                      .frame(width: 12, height: 12)
//                      Text("4.0")
//                        .font(Font.custom("Manrope", size: 14))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                        .opacity(0.40)
//                    }
//                    .cornerRadius(30)
//                  }
//                  .frame(width: 147)
//                  Text("Hair specialist")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .frame(height: 44)
//              }
//              .padding(EdgeInsets(top: 5, leading: 5, bottom: 15, trailing: 5))
//              .cornerRadius(20)
//              .overlay(
//                RoundedRectangle(cornerRadius: 20)
//                  .inset(by: 0.25)
//                  .stroke(
//                    Color(red: 0, green: 0, blue: 0).opacity(0.30), lineWidth: 0.25
//                  )
//              )
//              VStack(spacing: 8) {
//                Rectangle()
//                  .foregroundColor(.clear)
//                  .frame(width: 157, height: 120)
//                  .background(
//                    AsyncImage(url: URL(string: "https://via.placeholder.com/157x120"))
//                  )
//                  .cornerRadius(15)
//                VStack(alignment: .leading, spacing: 4) {
//                  HStack(spacing: 6) {
//                    HStack(spacing: 4) {
//                      Text("Jane Cooper")
//                        .font(Font.custom("Manrope", size: 14).weight(.bold))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                      ZStack() { }
//                      .frame(width: 12, height: 12)
//                    }
//                    HStack(spacing: 3) {
//                      HStack(spacing: 0) {
//
//                      }
//                      .padding(EdgeInsets(top: 1.04, leading: 1, bottom: 1.04, trailing: 1))
//                      .frame(width: 12, height: 12)
//                      Text("4.0")
//                        .font(Font.custom("Manrope", size: 14))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                        .opacity(0.40)
//                    }
//                    .cornerRadius(30)
//                  }
//                  .frame(width: 147)
//                  Text("Hair specialist")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .frame(height: 44)
//              }
//              .padding(EdgeInsets(top: 5, leading: 5, bottom: 15, trailing: 5))
//              .cornerRadius(20)
//              .overlay(
//                RoundedRectangle(cornerRadius: 20)
//                  .inset(by: 0.25)
//                  .stroke(
//                    Color(red: 0, green: 0, blue: 0).opacity(0.30), lineWidth: 0.25
//                  )
//              )
//              VStack(spacing: 8) {
//                Rectangle()
//                  .foregroundColor(.clear)
//                  .frame(width: 157, height: 120)
//                  .background(
//                    AsyncImage(url: URL(string: "https://via.placeholder.com/157x120"))
//                  )
//                  .cornerRadius(15)
//                VStack(alignment: .leading, spacing: 4) {
//                  HStack(spacing: 6) {
//                    HStack(spacing: 4) {
//                      Text("Jane Cooper")
//                        .font(Font.custom("Manrope", size: 14).weight(.bold))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                      ZStack() { }
//                      .frame(width: 12, height: 12)
//                    }
//                    HStack(spacing: 3) {
//                      HStack(spacing: 0) {
//
//                      }
//                      .padding(EdgeInsets(top: 1.04, leading: 1, bottom: 1.04, trailing: 1))
//                      .frame(width: 12, height: 12)
//                      Text("4.0")
//                        .font(Font.custom("Manrope", size: 14))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                        .opacity(0.40)
//                    }
//                    .cornerRadius(30)
//                  }
//                  .frame(width: 147)
//                  Text("Face specialist")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .frame(height: 44)
//              }
//              .padding(EdgeInsets(top: 5, leading: 5, bottom: 15, trailing: 5))
//              .cornerRadius(20)
//              .overlay(
//                RoundedRectangle(cornerRadius: 20)
//                  .inset(by: 0.25)
//                  .stroke(
//                    Color(red: 0, green: 0, blue: 0).opacity(0.30), lineWidth: 0.25
//                  )
//              )
//              VStack(spacing: 8) {
//                Rectangle()
//                  .foregroundColor(.clear)
//                  .frame(width: 157, height: 120)
//                  .background(
//                    AsyncImage(url: URL(string: "https://via.placeholder.com/157x120"))
//                  )
//                  .cornerRadius(15)
//                VStack(alignment: .leading, spacing: 4) {
//                  HStack(spacing: 6) {
//                    HStack(spacing: 4) {
//                      Text("Jane Cooper")
//                        .font(Font.custom("Manrope", size: 14).weight(.bold))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                      ZStack() { }
//                      .frame(width: 12, height: 12)
//                    }
//                    HStack(spacing: 3) {
//                      HStack(spacing: 0) {
//
//                      }
//                      .padding(EdgeInsets(top: 1.04, leading: 1, bottom: 1.04, trailing: 1))
//                      .frame(width: 12, height: 12)
//                      Text("4.0")
//                        .font(Font.custom("Manrope", size: 14))
//                        .lineSpacing(19.60)
//                        .foregroundColor(.black)
//                        .opacity(0.40)
//                    }
//                    .cornerRadius(30)
//                  }
//                  .frame(width: 147)
//                  Text("Face specialist")
//                    .font(Font.custom("Manrope", size: 14))
//                    .lineSpacing(19.60)
//                    .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
//                }
//                .frame(height: 44)
//              }
//              .padding(EdgeInsets(top: 5, leading: 5, bottom: 15, trailing: 5))
//              .cornerRadius(20)
//              .overlay(
//                RoundedRectangle(cornerRadius: 20)
//                  .inset(by: 0.25)
//                  .stroke(
//                    Color(red: 0, green: 0, blue: 0).opacity(0.30), lineWidth: 0.25
//                  )
//              )
//            }
//            .frame(width: 345)
//          }
//        }
//        .frame(width: 375, height: 918)
//        .offset(x: 0, y: 32)
//      }
//      .frame(width: 375, height: 982)
//      .offset(x: 0, y: -6.50)
//      HStack(spacing: 10) {
//        Text("Continue")
//          .font(Font.custom("Manrope", size: 16).weight(.medium))
//          .lineSpacing(21.60)
//          .foregroundColor(.black)
//      }
//      .padding(EdgeInsets(top: 13, leading: 35, bottom: 15, trailing: 35))
//      .frame(width: 345)
//      .background(Color(red: 0.70, green: 1, blue: 0.47))
//      .cornerRadius(30)
//      .offset(x: 0, y: 477.50)
//    }
//    .frame(width: 375, height: 1055)
//    .background(.white)
//    .cornerRadius(40);
//  }
//}
//
//
//#Preview {
//    BookAppointmentScreen()
//}
