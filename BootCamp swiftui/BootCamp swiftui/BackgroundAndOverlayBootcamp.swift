//
//  BackgroundAndOverlayBootcamp.swift
//  BootCamp swiftui
//
//  Created by Mohamed Salah on 08/04/2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "heart.fill")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [.purple, .pink], startPoint: .topLeading, endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 100, height: 100)
                        .shadow(
                            color: Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)), radius: 20
                        )
                        .overlay(
                            Circle()
                                .fill(.purple)
                                .frame(width: 35, height: 35)
                                .overlay(
                                Text("3")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                ),
                            
                            alignment: .bottomTrailing
                        )
                )

            Spacer()

            Background()
            Overlay()
            CompineThem()
        }
    }

    struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            BackgroundAndOverlayBootcamp()
        }
    }

    struct Background: View {
        var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

                .background(
                    //                .red
//                LinearGradient(colors: [.red,.blue], startPoint: .bottom, endPoint: .bottom)
                    Circle().fill(.blue)
                        .frame(width: 100, height: 100, alignment: .center)
                )

                .background(
                    Circle().fill(.red)
                        .frame(width: 120, height: 120, alignment: .center)
                )
        }
    }

    struct Overlay: View {
        var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Circle()
                .fill(.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("2")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
        }
    }

    struct CompineThem: View {
        var body: some View {
            Rectangle().frame(width: 100, height: 100)
                .background(
                    Rectangle()
                        .fill(.red)
                        .frame(width: 130, height: 130),
                    alignment: .topTrailing
                )
                .overlay(
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50),
                    alignment: .topLeading
                )
        }
    }
}
