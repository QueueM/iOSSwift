

import SwiftUI


struct Search: View {
  var body: some View {
    VStack(spacing: 0) {
      VStack(spacing: 0) {
        ZStack() {
          HStack(spacing: 10) {
            HStack(spacing: 0) {
              ZStack() { }
              .frame(width: 20, height: 20)
            }
            .frame(width: 20, height: 20)
            HStack(spacing: 6) {
              HStack(spacing: 8) {
                HStack(spacing: 0) {
                  ZStack() { }
                  .frame(width: 20, height: 20)
                }
                .frame(width: 20, height: 20)
                Text("Search")
                  .font(Font.custom("Manrope", size: 14))
                  .lineSpacing(19.60)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              HStack(spacing: 8) {
                HStack(spacing: 0) {
                  ZStack() { }
                  .frame(width: 20, height: 20)
                }
                .frame(width: 20, height: 20)
              }
              .padding(12)
              .background(.black)
              .cornerRadius(40)
            }
            .padding(EdgeInsets(top: 4, leading: 20, bottom: 4, trailing: 4))
            .frame(height: 52)
            .cornerRadius(40)
            .overlay(
              RoundedRectangle(cornerRadius: 40)
                .inset(by: 0.25)
                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
            )
          }
          .frame(width: 345, height: 52)
          .offset(x: 0, y: -451.50)
          VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top, spacing: 80) {
              HStack(spacing: 6) {
                Text("All")
                  .font(Font.custom("Manrope", size: 14).weight(.semibold))
                  .lineSpacing(19.60)
                  .foregroundColor(.black)
              }
              HStack(spacing: 0) {
                Text("Haircut")
                  .font(Font.custom("Manrope", size: 14))
                  .lineSpacing(19.60)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              .padding(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
              .frame(width: 52, height: 20)
              HStack(spacing: 0) {
                Text("Makeup")
                  .font(Font.custom("Manrope", size: 14))
                  .lineSpacing(19.60)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              .frame(width: 52, height: 20)
              HStack(spacing: 0) {
                Text("Massage")
                  .font(Font.custom("Manrope", size: 14))
                  .lineSpacing(19.60)
                  .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
              }
              .frame(width: 52, height: 20)
              Text("Skincare")
                .font(Font.custom("Manrope", size: 14))
                .lineSpacing(19.60)
                .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
            .frame(width: 345)
          }
          .frame(width: 345, height: 30)
          .offset(x: 0, y: -380.50)
          VStack(alignment: .leading, spacing: 25) {
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
            VStack(alignment: .leading, spacing: 15) {
              HStack(spacing: 15) {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 130, height: 120)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/130x120"))
                  )
                  .cornerRadius(15)
                VStack(alignment: .leading, spacing: 12) {
                  VStack(alignment: .leading, spacing: 4) {
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
                      Text("4.0")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                    }
                    .cornerRadius(30)
                    HStack(spacing: 6) {
                      Text("Velvet Vanity")
                        .font(Font.custom("Manrope", size: 16).weight(.bold))
                        .lineSpacing(21.60)
                        .foregroundColor(.black)
                      ZStack() { }
                      .frame(width: 12, height: 12)
                    }
                    Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                      .font(Font.custom("Manrope", size: 14))
                      .lineSpacing(19.60)
                      .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  }
                  HStack(spacing: 4) {
                    HStack(spacing: 4) {
                      HStack(spacing: 0) {
                        ZStack() { }
                        .frame(width: 14, height: 14)
                      }
                      .frame(width: 14, height: 14)
                      Text("8.5 min (4.5 km)")
                        .font(Font.custom("Manrope", size: 14))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                        .opacity(0.40)
                    }
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
                  .frame(width: 200)
                }
              }
              HStack(spacing: 15) {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 130, height: 120)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/130x120"))
                  )
                  .cornerRadius(15)
                VStack(alignment: .leading, spacing: 12) {
                  VStack(alignment: .leading, spacing: 4) {
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
                      Text("4.0")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                    }
                    .cornerRadius(30)
                    HStack(spacing: 6) {
                      Text("Lavish Layers")
                        .font(Font.custom("Manrope", size: 16).weight(.bold))
                        .lineSpacing(21.60)
                        .foregroundColor(.black)
                      ZStack() { }
                      .frame(width: 12, height: 12)
                    }
                    Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                      .font(Font.custom("Manrope", size: 14))
                      .lineSpacing(19.60)
                      .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  }
                  HStack(spacing: 4) {
                    HStack(spacing: 4) {
                      HStack(spacing: 0) {
                        ZStack() { }
                        .frame(width: 14, height: 14)
                      }
                      .frame(width: 14, height: 14)
                      Text("8.5 min (4.5 km)")
                        .font(Font.custom("Manrope", size: 14))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                        .opacity(0.40)
                    }
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
                  .frame(width: 200)
                }
              }
              HStack(spacing: 15) {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 130, height: 120)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/130x120"))
                  )
                  .cornerRadius(15)
                VStack(alignment: .leading, spacing: 12) {
                  VStack(alignment: .leading, spacing: 4) {
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
                      Text("4.0")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                    }
                    .cornerRadius(30)
                    HStack(spacing: 6) {
                      Text("Plush Ponytail")
                        .font(Font.custom("Manrope", size: 16).weight(.bold))
                        .lineSpacing(21.60)
                        .foregroundColor(.black)
                      ZStack() { }
                      .frame(width: 12, height: 12)
                    }
                    Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                      .font(Font.custom("Manrope", size: 14))
                      .lineSpacing(19.60)
                      .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  }
                  HStack(spacing: 4) {
                    HStack(spacing: 4) {
                      HStack(spacing: 0) {
                        ZStack() { }
                        .frame(width: 14, height: 14)
                      }
                      .frame(width: 14, height: 14)
                      Text("8.5 min (4.5 km)")
                        .font(Font.custom("Manrope", size: 14))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                        .opacity(0.40)
                    }
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
                  .frame(width: 200)
                }
              }
              HStack(spacing: 15) {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 130, height: 120)
                  .background(
                    AsyncImage(url: URL(string: "https://via.placeholder.com/130x120"))
                  )
                  .cornerRadius(15)
                VStack(alignment: .leading, spacing: 12) {
                  VStack(alignment: .leading, spacing: 4) {
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
                      Text("4.0")
                        .font(Font.custom("Manrope", size: 14).weight(.semibold))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                    }
                    .cornerRadius(30)
                    HStack(spacing: 6) {
                      Text("Lotus Salon")
                        .font(Font.custom("Manrope", size: 16).weight(.bold))
                        .lineSpacing(21.60)
                        .foregroundColor(.black)
                      ZStack() { }
                      .frame(width: 12, height: 12)
                    }
                    Text("1901 Thornridge Cir. Shiloh, Hawaii 81063")
                      .font(Font.custom("Manrope", size: 14))
                      .lineSpacing(19.60)
                      .foregroundColor(Color(red: 0.58, green: 0.58, blue: 0.58))
                  }
                  HStack(spacing: 4) {
                    HStack(spacing: 4) {
                      HStack(spacing: 0) {
                        ZStack() { }
                        .frame(width: 14, height: 14)
                      }
                      .frame(width: 14, height: 14)
                      Text("8.5 min (4.5 km)")
                        .font(Font.custom("Manrope", size: 14))
                        .lineSpacing(19.60)
                        .foregroundColor(.black)
                        .opacity(0.40)
                    }
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
                  .frame(width: 200)
                }
              }
            }
            .padding(EdgeInsets(top: 25, leading: 0, bottom: 0, trailing: 0))
            .overlay(
              Rectangle()
                .inset(by: 0.25)
                .stroke(Color(red: 0.75, green: 0.75, blue: 0.75), lineWidth: 0.25)
            )
          }
          .frame(width: 345, height: 813)
          .offset(x: 0, y: 71)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
      }
      .frame(maxWidth: .infinity, minHeight: 955, maxHeight: 955)
    }
    .padding(EdgeInsets(top: 30, leading: 15, bottom: 0, trailing: 15))
    .frame(width: 375, height: 812)
    .background(.white)
    .cornerRadius(40);
  }
}

#Preview {
    Search()
}
